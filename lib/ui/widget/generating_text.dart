import 'dart:async';

import 'package:flutter/material.dart';

class GeneratingText extends StatefulWidget {
  const GeneratingText({super.key});

  @override
  State<StatefulWidget> createState() => _GeneratingTextState();
}

class _GeneratingTextState extends State<GeneratingText> {
  late Timer _timer;

  int _points = 8;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(
      const Duration(milliseconds: 200),
      (Timer timer) {
        setState(() {
          _points = (_points + 1) % 8;
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    String text = 'Generating';

    for (int inx = 0; inx < _points; inx++) {
      text += '.';
    }

    return Text(text);
  }
}
