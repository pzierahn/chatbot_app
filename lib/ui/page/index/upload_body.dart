import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/generated/document_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/service/storage.dart';
import 'package:braingain_app/ui/page/index/file_tile.dart';
import 'package:braingain_app/ui/page/index/upload_dialog.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class UploadBody extends StatefulWidget {
  const UploadBody({
    super.key,
    required this.collection,
    this.files,
  });

  final Collection collection;
  final List<PlatformFile>? files;

  @override
  State<UploadBody> createState() => _UploadBodyState();
}

class _UploadBodyState extends State<UploadBody> {
  final _queue = <UploadJob>[];
  final _status = <String, DocumentStatus>{};

  @override
  void initState() {
    super.initState();

    if (widget.files != null) {
      _processFiles(widget.files!);
    }
  }

  void _processFiles(List<PlatformFile> files) {
    for (final file in files) {
      _processFile(file);
    }
  }

  void _processFile(PlatformFile file) {
    final job = StorageUtils.createTask(
      collectionId: widget.collection.id,
      file: file,
    );

    setState(() {
      _queue.add(job);
      _status[job.docId] = DocumentStatus(
        uploaded: false,
      );
    });

    job.ref.putData(file.bytes!).then((event) {
      if (event.state != TaskState.success) {
        throw Exception("Upload failed");
      }

      setState(() {
        _status[job.docId] = DocumentStatus(
          uploaded: true,
        );
      });

      final metaFile = File()
        ..filename = job.file.name
        ..path = job.ref.fullPath;

      final metadata = DocumentMetadata()..file = metaFile;

      final doc = IndexJob()
        ..id = job.docId
        ..collectionId = job.collectionId
        ..document = metadata;

      documents.index(doc).then((stream) {
        stream
            .listen(
          (progress) => setState(() {
            _status[doc.id] = DocumentStatus(
              uploaded: true,
              progress: progress,
            );
          }),
        )
            .onError((error) {
          debugPrint(error.toString());
          setState(() {
            _status[doc.id] = DocumentStatus(
              uploaded: true,
              error: error,
            );
          });
        });
      }).catchError((error) {
        debugPrint(error.toString());
        setState(() {
          _status[doc.id] = DocumentStatus(
            uploaded: true,
            error: error,
          );
        });
      });
    }).catchError((error) {
      debugPrint(error.toString());
      setState(() {
        _status[job.docId] = DocumentStatus(
          uploaded: false,
          error: error,
        );
      });
    });
  }

  void _uploadFiles() {
    showUploadDialog()
        .then((files) => _processFiles(files))
        .catchError((error) => ErrorSnackBar.show(context, error));
  }

  @override
  Widget build(BuildContext context) {
    _queue.sort((a, b) => a.file.name.compareTo(b.file.name));

    if (_queue.isNotEmpty) {
      return ConstrainedListView(
        children: _queue
            .map((job) => FileUploadProgress(
                  filename: job.file.name,
                  status: _status[job.docId] ?? DocumentStatus(),
                ))
            .toList(),
      );
    }

    return Center(
      child: TextIllustration(
        illustration: UnDrawIllustration.upload,
        action: TextButton.icon(
          onPressed: _uploadFiles,
          icon: const Icon(Icons.upload_file),
          label: const Text('Upload files'),
        ),
      ),
    );
  }
}
