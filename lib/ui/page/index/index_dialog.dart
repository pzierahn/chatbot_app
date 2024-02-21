import 'package:braingain_app/generated/document_service.pb.dart';
import 'package:braingain_app/service/index.dart';
import 'package:braingain_app/ui/widget/webpage_index_dialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

Future<List<PlatformFile>> showUploadDialog() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowMultiple: true,
    allowedExtensions: ['pdf'],
    withData: true,
  );

  return result?.files ?? <PlatformFile>[];
}

Future<DocumentMetadata?> showIndexDialog(
  BuildContext context,
  String collectionId,
) async {
  return showDialog<DocumentMetadata>(
    context: context,
    builder: (context) {
      return IndexDialog(
        collectionId: collectionId,
      );
    },
  );
}

class IndexDialog extends StatelessWidget {
  const IndexDialog({
    super.key,
    required this.collectionId,
  });

  final String collectionId;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            trailing: Icon(
              Icons.public_outlined,
              color: color.primary,
            ),
            title: const Text(
              'Source Webpage',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Extract knowledge from Webpages',
              style: TextStyle(
                color: color.outline,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();

              WebpageIndexDialog.show(context).then((webpage) {
                if (webpage == null) {
                  return;
                }

                IndexService.indexWebpage(collectionId, webpage);
              });
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.document_scanner,
              color: color.primary,
            ),
            title: const Text(
              'Source PDFs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Extract knowledge from PDFs',
              style: TextStyle(
                color: color.outline,
              ),
            ),
            onTap: () async {
              Navigator.of(context).pop();
              final files = await showUploadDialog();
              IndexService.indexFiles(collectionId, files);
            },
          ),
        ],
      ),
    );
  }
}
