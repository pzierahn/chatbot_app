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

  if (result != null) {
    return result.files;
  } else {
    return [];
  }
}

Future<void> showIndexDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (context) {
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
                WebpageIndexDialog.show(context);
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
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}
