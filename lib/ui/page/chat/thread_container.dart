import 'package:flutter/material.dart';

class ThreadContainer extends StatelessWidget {
  const ThreadContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: colors.outlineVariant,
          width: 1.0,
        ),
      ),
      margin: const EdgeInsets.all(16),
      child: child,
    );
  }
}
