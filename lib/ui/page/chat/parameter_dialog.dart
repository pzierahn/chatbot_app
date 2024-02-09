import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:flutter/material.dart';

class ParameterDialog extends StatefulWidget {
  const ParameterDialog({
    super.key,
    required this.prompt,
  });

  final ThreadPrompt prompt;

  static Future<ThreadPrompt?> show(
    BuildContext context,
    ThreadPrompt prompt,
  ) {
    return showDialog<ThreadPrompt?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Parameters'),
          content: SizedBox(
            width: 400,
            // height: 400,
            child: SingleChildScrollView(
              child: ParameterDialog(prompt: prompt),
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
                Navigator.pop(context, prompt);
              },
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  @override
  State<ParameterDialog> createState() => _PromptOptionsState();
}

class _PromptOptionsState extends State<ParameterDialog> {
  ThreadPrompt get prompt => widget.prompt;

  ModelOptions get options => prompt.modelOptions;

  late TextEditingController _textTemp;
  late TextEditingController _textLimit;

  @override
  void initState() {
    super.initState();

    _textTemp = TextEditingController(
      text: prompt.modelOptions.temperature.toStringAsFixed(2),
    );
    _textLimit = TextEditingController(
      text: prompt.limit.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    const contentPadding = EdgeInsets.symmetric(vertical: 8);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: contentPadding,
          title: Row(
            children: [
              const Text('Creativity'),
              const Spacer(),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _textTemp,
                  textAlign: TextAlign.end,
                  onSubmitted: (val) {
                    setState(() => options.temperature = double.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0.00',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: options.temperature,
            divisions: 20,
            onChanged: (val) {
              _textTemp.text = val.toStringAsFixed(2);
              setState(() => options.temperature = val);
            },
          ),
        ),
        ListTile(
          contentPadding: contentPadding,
          title: Row(
            children: [
              const Text('Input Pages'),
              const Spacer(),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _textLimit,
                  textAlign: TextAlign.end,
                  onSubmitted: (val) {
                    setState(() => prompt.limit = int.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: prompt.limit.toDouble(),
            min: 0,
            max: 100,
            onChanged: (val) {
              _textLimit.text = val.toInt().toString();
              setState(() => prompt.limit = val.toInt());
            },
          ),
        ),
      ],
    );
  }
}
