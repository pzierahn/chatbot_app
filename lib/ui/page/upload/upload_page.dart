import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/service/storage.dart';
import 'package:braingain_app/ui/page/upload/file_tile.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  static Future<void> open(
      BuildContext context, Collections_Collection col) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => UploadPage(
          collection: col,
        ),
      ),
    );
  }

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final _queue = <Document>[];
  final _status = <String, DocumentStatus>{};

  Future<void> _uploadFiles() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: true,
      allowedExtensions: ['pdf'],
      withData: true,
    );

    if (result == null) {
      return;
    }

    for (final file in result.files) {
      final ref = StorageUtils.create(
        collection: widget.collection.id,
        file: file,
      );

      debugPrint('file: ${file.name} ${file.bytes?.length}');

      setState(() {
        _queue.add(ref);
        _status[ref.id] = DocumentStatus(
          ref: ref,
          uploaded: false,
        );
      });

      StorageUtils.upload(ref, file.bytes!).then((value) {
        debugPrint('uploaded: ${value.filename}');

        setState(() {
          _status[ref.id] = DocumentStatus(
            ref: ref,
            uploaded: true,
          );
        });

        brainboost.indexDocument(ref).listen(
            (progress) => setState(() {
                  _status[ref.id] = DocumentStatus(
                    ref: ref,
                    uploaded: true,
                    progress: progress,
                  );
                }), onError: (error) {
          debugPrint('error: $error');

          setState(() {
            _status[ref.id] = DocumentStatus(
              ref: ref,
              uploaded: true,
              error: error,
            );
          });
        });
      }).catchError((error) {
        debugPrint('error: $error');

        setState(() {
          _status[ref.id] = DocumentStatus(
            ref: ref,
            uploaded: false,
            error: error,
          );
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _queue.sort((a, b) => a.filename.compareTo(b.filename));

    Widget body;
    if (_queue.isNotEmpty) {
      body = ConstrainedListView(
          children: _queue
              .map(
                (ref) => FileUploadProgress(
                  ref: ref,
                  status: _status[ref.id] ?? DocumentStatus(ref: ref),
                ),
              )
              .toList());
    } else {
      body = Center(
        child: TextIllustration(
          illustration: UnDrawIllustration.upload,
          action: TextButton.icon(
            onPressed: _uploadFiles,
            icon: const Icon(Icons.upload_file),
            label: const Text('Select files to upload'),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _uploadFiles,
          ),
        ],
      ),
      body: body,
    );
  }
}
