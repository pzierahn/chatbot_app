import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/service/storage.dart';
import 'package:braingain_app/ui/page/upload/file_tile.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/utils/login.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

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
  final _queue = <StorageRef>[];
  final _upload = <String, Future<StorageRef>>{};
  final _progress = <String, ResponseStream<IndexProgress>>{};

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
      final ref = StorageUtils.createRef(
        collection: widget.collection.id,
        file: file,
      );

      debugPrint('file: ${file.name} ${file.bytes?.length}');

      final upload = StorageUtils.upload(ref, file.bytes!);
      setState(() {
        _queue.add(ref);
        _upload[ref.id] = upload;
      });

      upload.then((value) {
        debugPrint('uploaded: ${value.filename}');

        setState(() {
          _queue.add(ref);
          _upload.remove(ref.id);
          _progress[ref.id] = braingain.indexDocument(ref);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _queue.sort((a, b) => a.filename.compareTo(b.filename));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload'),
        actions: [
          IconButton(
            onPressed: () {
              signIn();
            },
            icon: const Icon(Icons.login),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _uploadFiles,
          ),
        ],
      ),
      body: ConstrainedListView(
          children: _queue
              .map(
                (ref) => FileUploadProgress(
                  ref: ref,
                  upload: _upload.containsKey(ref.id) ? _upload[ref.id] : null,
                  progress: _progress[ref.id],
                ),
              )
              .toList()),
    );
  }
}
