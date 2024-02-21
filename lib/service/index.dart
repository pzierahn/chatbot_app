import 'package:braingain_app/generated/document_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/utils/document.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

abstract class IndexListener {
  void onStatusUpdate(List<IndexStatus> list);
}

class IndexService {
  static final Map<String, IndexStatus> _status = {};

  static final _listeners = <IndexListener>[];

  static void addListener(IndexListener listener) {
    _listeners.add(listener);
  }

  static void removeListener(IndexListener listener) {
    _listeners.remove(listener);
  }

  static void _updateStatus(IndexStatus status) {
    if (status.error != null) {
      debugPrint("Status update: ${status.documentId} - ${status.error}");
    } else {
      debugPrint("Status update: ${status.documentId} - ${status.status}");
    }

    _status[status.documentId] = status;

    final list = _status.values.toList();
    list.sort((a, b) => a.title.compareTo(b.title));

    for (final listener in _listeners) {
      listener.onStatusUpdate(list);
    }
  }

  static void indexFile(String collectionId, PlatformFile file) async {
    final userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId == null) {
      throw Exception("User not logged in");
    }

    final docId = const Uuid().v4().toString();
    final ref = FirebaseStorage.instance
        .ref()
        .child('documents')
        .child(userId)
        .child(collectionId)
        .child('$docId.pdf');

    try {
      _updateStatus(IndexStatus(
        documentId: docId,
        title: file.name,
        status: "Uploading",
      ));
      await ref.putData(file.bytes!);
    } catch (err) {
      _updateStatus(IndexStatus(
        documentId: docId,
        title: file.name,
        error: err,
      ));
      return;
    }

    _updateStatus(IndexStatus(
      documentId: docId,
      title: file.name,
      status: "Uploaded",
    ));

    final fileMeta = File()
      ..path = ref.fullPath
      ..filename = file.name;
    final meta = DocumentMetadata()..file = fileMeta;

    final job = IndexJob()
      ..id = docId
      ..collectionId = collectionId
      ..document = meta;

    _index(job);
  }

  static void _index(IndexJob job) async {
    _updateStatus(IndexStatus(
      documentId: job.id,
      title: DocumentUtils.getTitle(job.document),
      status: "Starting indexing",
    ));

    Stream<IndexProgress> stream;

    try {
      stream = await documents.index(job);
    } catch (err) {
      _updateStatus(IndexStatus(
        documentId: job.id,
        title: DocumentUtils.getTitle(job.document),
        error: err,
      ));
      return;
    }

    stream.listen((event) {
      _updateStatus(IndexStatus(
        documentId: job.id,
        title: DocumentUtils.getTitle(job.document),
        status: event.status,
        success: event.progress == 1.0,
      ));
    }, onError: (err) {
      _updateStatus(IndexStatus(
        documentId: job.id,
        title: DocumentUtils.getTitle(job.document),
        error: err,
      ));
    });
  }

  static void indexFiles(String collectionId, List<PlatformFile> files) {
    for (final file in files) {
      indexFile(collectionId, file);
    }
  }

  static void indexWebpage(String collectionId, Webpage webpage) {
    final metadata = DocumentMetadata();
    metadata.web = webpage;

    final job = IndexJob()
      ..id = const Uuid().v4().toString()
      ..collectionId = collectionId
      ..document = metadata;

    _index(job);
  }
}

class IndexStatus {
  IndexStatus({
    required this.documentId,
    required this.title,
    this.status = "",
    this.success = false,
    this.error,
  });

  final String documentId;
  final String title;
  final String status;
  final bool success;
  final Object? error;

  bool get hasError => error != null;
}
