import 'package:flutter/material.dart';

class WebpageIndexDialog extends StatelessWidget {
  WebpageIndexDialog({super.key});

  static Future<String?> show(BuildContext context) {
    return showDialog<String?>(
      context: context,
      builder: (context) {
        return WebpageIndexDialog();
      },
    );
  }

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Index Webpage'),
      content: TextField(
        controller: _controller,
        decoration: const InputDecoration(
          labelText: 'URL',
          hintText: 'https://example.com',
        ),
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
            Navigator.of(context).pop(_controller.text);
          },
        ),
      ],
    );
  }
}
