import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class GeneratingFragment extends StatefulWidget {
  const GeneratingFragment({super.key});

  @override
  State createState() => _GeneratingFragmentState();
}

class _GeneratingFragmentState extends State<GeneratingFragment> {
  late Timer _periodicTimer;
  late UnDrawIllustration _illustration;

  @override
  void initState() {
    super.initState();

    const illustrations = [
      UnDrawIllustration.thoughts,
      UnDrawIllustration.thought_process,
      UnDrawIllustration.online_chat,
      UnDrawIllustration.chat,
      UnDrawIllustration.texting,
    ];

    _illustration = illustrations[Random().nextInt(illustrations.length - 1)];

    const duration = Duration(milliseconds: 200);
    _periodicTimer = Timer.periodic(duration, (timer) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _periodicTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      children: [
        UnDraw(
          color: color.primary,
          illustration: _illustration,
          width: 300,
        ),
        const SizedBox(height: 16),
        Text(
          'Generating response...',
          style: TextStyle(
            letterSpacing: Random().nextDouble() * 5,
            fontWeight: FontWeight
                .values[Random().nextInt(FontWeight.values.length - 2) + 2],
            fontStyle:
                FontStyle.values[Random().nextInt(FontStyle.values.length)],
          ),
        ),
      ],
    );
  }
}
