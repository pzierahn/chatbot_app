import 'dart:math';

import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class GeneratingFragment extends StatefulWidget {
  const GeneratingFragment({super.key});

  @override
  State createState() => _GeneratingFragmentState();
}

class _GeneratingFragmentState extends State<GeneratingFragment> {
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
        const Text('Generating response...'),
      ],
    );
  }
}
