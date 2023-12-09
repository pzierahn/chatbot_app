import 'dart:io';

import 'package:braingain_app/generated/documents.pb.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class UploadJob {
  UploadJob({
    required this.docId,
    required this.collectionId,
    required this.file,
    required this.ref,
  });

  final String docId;
  final String collectionId;
  final PlatformFile file;
  final Reference ref;
}

class StorageUtils {
  static UploadJob createTask({
    required String collectionId,
    required PlatformFile file,
  }) {
    final userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId == null) {
      throw Exception("User not logged in");
    }

    final docId = const Uuid().v4().toString();
    Reference ref = FirebaseStorage.instance
        .ref()
        .child('documents')
        .child(userId)
        .child(collectionId)
        .child('$docId.pdf');

    return UploadJob(
      docId: docId,
      collectionId: collectionId,
      file: file,
      ref: ref,
    );
  }
}
