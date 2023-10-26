import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class ChatFragmentError extends StatelessWidget {
  const ChatFragmentError({
    super.key,
    this.error,
  });

  final Object? error;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    if (ErrorUtils.isNoFounding(error)) {
      return TextIllustration(
        width: 200,
        height: 200,
        illustration: UnDrawIllustration.wallet,
        action: TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.credit_card),
          label: const Text('Add founds'),
        ),
        text: 'You have spend all your money',
      );
    }

    return TextIllustration(
      illustration: UnDrawIllustration.warning,
      text: ErrorUtils.toText(error),
      color: color.error,
    );
  }
}
