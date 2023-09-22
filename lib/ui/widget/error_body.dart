import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class ErrorBody extends StatelessWidget {
  const ErrorBody({
    super.key,
    required this.error,
  });

  final Object? error;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Center(
      child: TextIllustration(
        width: 300,
        illustration: UnDrawIllustration.warning,
        text: ErrorUtils.toText(error),
        color: color.error,
        textStyle: TextStyle(color: color.error),
      ),
    );
  }
}
