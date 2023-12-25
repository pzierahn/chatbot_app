import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:flutter/material.dart';

class PromptInfo extends StatelessWidget {
  const PromptInfo({
    super.key,
    required this.prompt,
    required this.completion,
  });

  final Prompt prompt;
  final ChatMessage completion;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    final textStyles = text.titleLarge?.merge(const TextStyle(
      fontWeight: FontWeight.w500,
    ));

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SelectableText(
        prompt.prompt,
        style: textStyles,
        textAlign: TextAlign.start,
      ),
    );
  }
}
