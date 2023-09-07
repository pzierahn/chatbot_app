import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({
    super.key,
  });

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  int _maxTokens = 1024;
  double _temperature = 0.0;
  int _limit = 10;
  double _threshold = 0.8;

  final _textTemp = TextEditingController(text: '0.00');
  final _textTokens = TextEditingController(text: '1024');
  final _textLimit = TextEditingController(text: '10');
  final _textThreshold = TextEditingController(text: '0.80');

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Column(
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
                    setState(() => _temperature = double.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0.00',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: _temperature,
            divisions: 20,
            onChanged: (val) {
              _textTemp.text = val.toStringAsFixed(2);
              setState(() => _temperature = val);
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
                    setState(() => _maxTokens = int.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: _maxTokens.toDouble(),
            min: 1,
            max: 1024,
            onChanged: (val) {
              _textTokens.text = val.toInt().toString();
              setState(() => _maxTokens = val.toInt());
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
                    setState(() => _limit = int.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: _limit.toDouble(),
            min: 0,
            max: 30,
            onChanged: (val) {
              _textLimit.text = val.toInt().toString();
              setState(() => _limit = val.toInt());
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
                    setState(() => _threshold = double.parse(val));
                  },
                  decoration: const InputDecoration.collapsed(
                    hintText: '0.00',
                  ),
                ),
              ),
            ],
          ),
          subtitle: Slider(
            value: _threshold,
            divisions: 100,
            onChanged: (val) {
              _textThreshold.text = val.toStringAsFixed(2);
              setState(() => _threshold = val);
            },
          ),
        ),
      ],
    );
  }
}
