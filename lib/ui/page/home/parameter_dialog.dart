import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:flutter/material.dart';

class ParameterDialog extends StatefulWidget {
  const ParameterDialog({
    super.key,
    this.options,
  });

  final PromptOptions? options;

  static Future<PromptOptions?> show(BuildContext context) {
    return showDialog<PromptOptions?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Search'),
          content: const SizedBox(
            width: 300,
            height: 400,
            child: SingleChildScrollView(
              child: ParameterDialog(),
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
                Navigator.pop(context);
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
  late PromptOptions options;

  late TextEditingController _textTemp;
  late TextEditingController _textTokens;
  late TextEditingController _textLimit;
  late TextEditingController _textThreshold;

  @override
  void initState() {
    super.initState();

    if (widget.options != null) {
      options = widget.options!;
    } else {
      // Set default values
      options = PromptOptions()
        ..temperature = 0.0
        ..maxTokens = 1024
        ..limit = 10
        ..threshold = 0.8;
    }

    _textTemp = TextEditingController(
      text: options.temperature.toStringAsFixed(2),
    );
    _textTokens = TextEditingController(
      text: options.maxTokens.toString(),
    );
    _textLimit = TextEditingController(
      text: options.limit.toString(),
    );
    _textThreshold = TextEditingController(
      text: options.threshold.toStringAsFixed(2),
    );
  }

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Model'),
          subtitle: DropdownButton<String>(
            value: 'gpt-3.5-turbo',
            onChanged: (val) {},
            style: text.bodySmall,
            items: const [
              DropdownMenuItem(
                value: 'gpt-3.5-turbo',
                child: Text('gpt-3.5-turbo'),
              ),
              DropdownMenuItem(
                value: 'gpt-4',
                child: Text('gpt-4'),
              ),
            ],
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              const Text('Temperature'),
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
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              const Text('Max Tokens'),
              const Spacer(),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _textTokens,
                  textAlign: TextAlign.end,
                  onSubmitted: (val) {
                    setState(() => options.maxTokens = int.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: options.maxTokens.toDouble(),
            min: 1,
            max: 1024,
            onChanged: (val) {
              _textTokens.text = val.toInt().toString();
              setState(() => options.maxTokens = val.toInt());
            },
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              const Text('Limit'),
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
            max: 30,
            onChanged: (val) {
              _textLimit.text = val.toInt().toString();
              setState(() => options.limit = val.toInt());
            },
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              const Text('Threshold'),
              const Spacer(),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: _textThreshold,
                  textAlign: TextAlign.end,
                  onSubmitted: (val) {
                    setState(() => options.threshold = double.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0.00',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: options.threshold,
            divisions: 100,
            onChanged: (val) {
              _textThreshold.text = val.toStringAsFixed(2);
              setState(() => options.threshold = val);
            },
          ),
        ),
      ],
    );
  }
}
