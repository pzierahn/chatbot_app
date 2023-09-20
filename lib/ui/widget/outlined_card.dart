import 'package:braingain_app/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class OutlinedCard extends StatelessWidget {
  const OutlinedCard({
    super.key,
    required this.child,
    this.margin = const EdgeInsets.all(8),
    this.padding,
  });

  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: color.surfaceVariant.withOpacity(0.2),
        borderRadius: borderRadius,
        border: Border.all(
          color: color.outlineVariant,
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
