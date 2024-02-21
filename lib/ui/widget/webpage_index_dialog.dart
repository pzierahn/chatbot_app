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

  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AlertDialog(
        title: const Text('Index Webpage'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                filled: true,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _urlController,
              decoration: const InputDecoration(
                labelText: 'URL',
                hintText: 'https://example.com',
                filled: true,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                return null;
              },
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
              if (_formKey.currentState!.validate()) {
                final webpage = Webpage()
                  ..title = _titleController.text
                  ..url = _urlController.text;

                Navigator.of(context).pop(webpage);
              }
            },
          ),
        ],
      ),
    );
  }
}
