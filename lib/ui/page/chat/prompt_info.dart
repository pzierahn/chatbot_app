import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/parameter_button.dart';
import 'package:braingain_app/ui/page/chat/sources_button.dart';
import 'package:flutter/material.dart';

class PromptInfo extends StatelessWidget {
  const PromptInfo({
    super.key,
    required this.prompt,
    required this.completion,
  });

  final Prompt prompt;
  final Completion completion;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    final textStyles = text.titleLarge?.merge(const TextStyle(
      fontWeight: FontWeight.w500,
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SelectableText(
          prompt.prompt,
          style: textStyles,
          textAlign: TextAlign.start,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              SourcesButton(
                documents: completion.documents,
              ),
              ParameterButton(
                options: completion.prompt.options,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
