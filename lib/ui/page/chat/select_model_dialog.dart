import 'package:flutter/material.dart';

class SelectModelDialog extends StatelessWidget {
  const SelectModelDialog({
    super.key,
    required this.model,
  });

  final String model;

  static Future<String?> show({
    required BuildContext context,
    required String model,
  }) {
    return showDialog<String>(
      context: context,
      builder: (context) {
        return SelectModelDialog(model: model);
      },
    );
  }

  void _onModelChanged(BuildContext context, String? value) {
    Navigator.pop(context, value);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Model'),
      content: SizedBox(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<String>(
              value: 'gpt-4-turbo-preview',
              title: const Text('GPT-4 Turbo'),
              subtitle: const Text('Bigger context window and more expensive'),
              groupValue: model,
              onChanged: (value) => _onModelChanged(context, value),
            ),
            RadioListTile<String>(
              value: 'gpt-3.5-turbo-16k',
              title: const Text('GPT-3.5 Turbo'),
              subtitle: const Text('Smaller context window but cheaper'),
              groupValue: model,
              onChanged: (value) => _onModelChanged(context, value),
            ),
            RadioListTile<String>(
              value: 'gemini-pro',
              title: const Text('Gemini Pro'),
              subtitle: const Text('Google\'s model for text generation'),
              groupValue: model,
              onChanged: (value) {
                Navigator.pop(context, value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
