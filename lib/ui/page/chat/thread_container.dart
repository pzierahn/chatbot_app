import 'package:braingain_app/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class ThreadContainer extends StatelessWidget {
  const ThreadContainer({
    super.key,
    required this.child,
    this.outlineColor,
  });

  final Widget child;
  final Color? outlineColor;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(
          color: outlineColor ?? colors.outlineVariant,
          width: 1.0,
        ),
      ),
      margin: const EdgeInsets.all(16),
      child: child,
    );
  }
}
