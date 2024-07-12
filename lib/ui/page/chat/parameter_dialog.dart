import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:flutter/material.dart';

class ParameterDialog extends StatefulWidget {
  const ParameterDialog({
    super.key,
    required this.prompt,
  });

  final Prompt prompt;

  static Future<Prompt?> show(
    BuildContext context,
    Prompt prompt,
  ) {
    return showDialog<Prompt?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Retrieval Options'),
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
  Prompt get prompt => widget.prompt;

  int get documents => prompt.retrievalOptions.documents;

  set documents(int value) => prompt.retrievalOptions.documents = value;

  double get threshold => prompt.retrievalOptions.threshold;

  set threshold(double value) => prompt.retrievalOptions.threshold = value;

  ModelOptions get options => prompt.modelOptions;

  late TextEditingController _textLimit;
  late TextEditingController _textThreshold;

  @override
  void initState() {
    super.initState();

    _textLimit = TextEditingController(
      text: documents.toString(),
    );
    _textThreshold = TextEditingController(
      text: (prompt.retrievalOptions.threshold * 100).toStringAsFixed(0),
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
              const Text('Input Pages'),
              const Spacer(),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _textLimit,
                  textAlign: TextAlign.end,
                  onSubmitted: (val) {
                    setState(() => documents = int.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: documents.toDouble(),
            min: 0,
            max: 100,
            onChanged: (val) {
              _textLimit.text = val.toInt().toString();
              setState(() => documents = val.toInt());
            },
          ),
        ),
        ListTile(
          contentPadding: contentPadding,
          title: Row(
            children: [
              const Text('Document Relevance'),
              const Spacer(),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _textThreshold,
                  textAlign: TextAlign.end,
                  onSubmitted: (val) {
                    setState(() => threshold = int.parse(val) / 100.0);
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: (threshold * 100),
            min: 0,
            max: 100,
            onChanged: (val) {
              _textThreshold.text = val.toInt().toString();
              setState(() => threshold = (val / 100));
            },
          ),
        ),
      ],
    );
  }
}
