import 'package:flutter/material.dart';

class SelectModelDialog extends StatefulWidget {
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

  @override
  State createState() => _SelectModelDialogState();
}

class _SelectModelDialogState extends State<SelectModelDialog> {
  late String _selectedModel;

  @override
  void initState() {
    super.initState();
    _selectedModel = widget.model;
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
              value: 'gpt-4-1106-preview',
              title: const Text('GPT-4 Turbo'),
              groupValue: _selectedModel,
              onChanged: (value) {
                setState(() {
                  _selectedModel = value!;
                });
              },
            ),
            RadioListTile<String>(
              value: 'gpt-3.5-turbo-16k',
              title: const Text('GPT-3.5 Turbo'),
              groupValue: _selectedModel,
              onChanged: (value) {
                setState(() {
                  _selectedModel = value!;
                });
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, _selectedModel);
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
