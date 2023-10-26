import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class TextIllustration extends StatelessWidget {
  const TextIllustration({
    super.key,
    required this.illustration,
    this.width = 200,
    this.height,
    this.color,
    this.text,
    this.action,
    this.textStyle,
  });

  final UnDrawIllustration illustration;
  final double? width;
  final double? height;
  final Color? color;
  final String? text;
  final TextStyle? textStyle;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      UnDraw(
        color: color ?? Theme.of(context).colorScheme.secondary,
        illustration: illustration,
        width: width,
        height: height,
      ),
    ];

    if (text != null) {
      children.add(Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: width,
        child: Text(
          text!,
          style: textStyle ?? Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
      ));
    }

    if (action != null) {
      children.add(Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: action,
      ));
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: children,
    );
  }
}
