import 'package:braingain_app/generated/chat.pb.dart';
import 'package:flutter/material.dart';

class ParameterDialog extends StatefulWidget {
  const ParameterDialog({
    super.key,
    required this.options,
  });

  final PromptOptions options;

  static Future<PromptOptions?> show(
    BuildContext context,
    PromptOptions options,
  ) {
    return showDialog<PromptOptions?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Parameters'),
          content: SizedBox(
            width: 400,
            height: 400,
            child: SingleChildScrollView(
              child: ParameterDialog(options: options),
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
                Navigator.pop(context, options);
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
  PromptOptions get options => widget.options;

  late TextEditingController _textTemp;
  late TextEditingController _textLimit;

  @override
  void initState() {
    super.initState();

    _textTemp = TextEditingController(
      text: options.temperature.toStringAsFixed(2),
    );
    _textLimit = TextEditingController(
      text: options.limit.toString(),
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
              const Text('Max Input Pages'),
              const Spacer(),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _textLimit,
                  textAlign: TextAlign.end,
                  onSubmitted: (val) {
                    setState(() => options.limit = int.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: options.limit.toDouble(),
            min: 0,
            max: 100,
            onChanged: (val) {
              _textLimit.text = val.toInt().toString();
              setState(() => options.limit = val.toInt());
            },
          ),
        ),
      ],
    );
  }
}
