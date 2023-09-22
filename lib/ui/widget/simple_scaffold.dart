import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class CenterScaffold extends StatelessWidget {
  const CenterScaffold({
    super.key,
    this.title,
    this.child,
  });

  final Widget? title;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Center(
        child: child,
      ),
    );
  }
}

class ErrorScaffold extends StatelessWidget {
  const ErrorScaffold({
    super.key,
    this.title,
    this.error,
  });

  final String? title;
  final Object? error;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'Error'),
      ),
      body: Center(
        child: TextIllustration(
          width: 300,
          illustration: UnDrawIllustration.warning,
          text: ErrorUtils.toText(error),
          textStyle: TextStyle(color: color.error),
          color: color.error,
        ),
      ),
    );
  }
}
