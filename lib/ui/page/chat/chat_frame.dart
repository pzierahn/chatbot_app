import 'package:flutter/material.dart';

class ChatFrame extends StatelessWidget {
  const ChatFrame({
    super.key,
    required this.title,
    this.divider,
    required this.body,
    this.footer,
  });

  final Widget title;
  final Widget? divider;
  final Widget body;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Card(
      color: color.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: color.outlineVariant,
          width: 1.0,
        ),
      ),
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: title,
          ),
          if (divider != null) divider!,
          Padding(
            padding: const EdgeInsets.all(16),
            child: body,
          ),
          if (footer != null)
            Padding(
              padding: const EdgeInsets.all(16),
              child: footer!,
            ),
        ],
      ),
    );
  }
}
