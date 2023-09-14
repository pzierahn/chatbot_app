import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/prompt_info.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:undraw/undraw.dart';

class ChatFragment extends StatelessWidget {
  const ChatFragment({
    super.key,
    this.prompt,
    this.completion,
    required this.onPromptSubmit,
    required this.collection,
  });

  final Prompt? prompt;
  final Future<Completion>? completion;
  final ValueChanged<Prompt> onPromptSubmit;
  final Collections_Collection collection;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    if (prompt == null) {
      return _ChatFrame(
        child: PromptInput(
          prompt: prompt,
          onPromptSubmit: onPromptSubmit,
          collection: collection,
        ),
      );
    }

    return FutureBuilder<Completion>(
      future: completion,
      builder: (context, snap) {
        Widget promptWidget;
        Widget body;

        if (snap.hasError) {
          promptWidget = PromptInput(
            prompt: prompt!,
            collection: collection,
          );
          body = TextIllustration(
            illustration: UnDrawIllustration.warning,
            text: ErrorUtils.toText(snap.error),
            color: color.error,
          );
        } else if (snap.hasData) {
          promptWidget = PromptInfo(
            prompt: prompt!,
            completion: snap.data!,
          );
          body = MarkdownBody(
            data: snap.data!.text,
            selectable: true,
          );
        } else {
          promptWidget = PromptInput(
            prompt: prompt!,
            collection: collection,
          );
          body = TextIllustration(
            illustration: UnDrawIllustration.in_thought,
            color: color.primary,
            text: 'Thinking...',
          );
        }

        return _ChatFrame(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              promptWidget,
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: body,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ChatFrame extends StatelessWidget {
  const _ChatFrame({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: color.outlineVariant,
          width: 1.0,
        ),
        color: color.surface,
      ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}
