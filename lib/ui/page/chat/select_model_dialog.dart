import 'package:braingain_app/utils/llm_models.dart';
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
        height: 400,
        child: ListView(
            children: LLMModels.all.map((model) {
          return RadioListTile<String>(
            value: model.model,
            title: Text(model.title),
            subtitle: Text(model.provider),
            groupValue: this.model,
            onChanged: (value) => _onModelChanged(context, value),
          );
        }).toList()),
      ),
    );
  }
}
