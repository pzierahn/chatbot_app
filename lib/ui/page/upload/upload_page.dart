import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/service/storage.dart';
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

      StorageUtils.upload(ref, file.bytes!).then((value) {
        debugPrint('uploaded: ${value.filename}');

        setState(() {
          _queue.add(ref);
          _progress[ref.id] = braingain.indexDocument(ref);
        });
      }).catchError((error, stackTrace) {
        debugPrint('error: $error');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

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
                (ref) => StreamBuilder<IndexProgress>(
                  stream: _progress[ref.id],
                  builder: (context, stream) {
                    final progress = stream.hasData
                        ? (stream.data!.processedPages /
                            stream.data!.totalPages)
                        : 0.0;

                    debugPrint('stream: ${progress.toStringAsFixed(2)}');

                    return ListTile(
                      leading: Icon(
                        Icons.upload,
                        color: color.primary,
                      ),
                      title: Text(ref.filename),
                      subtitle: LinearProgressIndicator(
                        value: progress,
                      ),
                    );
                  },
                ),
              )
              .toList()),
    );
  }
}
