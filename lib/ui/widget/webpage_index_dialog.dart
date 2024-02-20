import 'package:braingain_app/generated/document_service.pb.dart';
import 'package:flutter/material.dart';

class WebpageIndexDialog extends StatelessWidget {
  WebpageIndexDialog({super.key});

  static Future<Webpage?> show(BuildContext context) {
    return showDialog<Webpage?>(
      context: context,
      builder: (context) {
        return WebpageIndexDialog();
      },
    );
  }

  final _titleController = TextEditingController();
  final _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Index Webpage'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextField(
            controller: _urlController,
            decoration: const InputDecoration(
              labelText: 'URL',
              hintText: 'https://example.com',
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Confirm'),
          onPressed: () {
            final webpage = Webpage()
              ..title = _titleController.text
              ..url = _urlController.text;

            Navigator.of(context).pop(webpage);
          },
        ),
      ],
    );
  }
}
