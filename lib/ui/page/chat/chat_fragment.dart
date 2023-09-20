import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/prompt_info.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:undraw/undraw.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({
    super.key,
    required this.onPromptSubmit,
    required this.collection,
  });

  final ValueChanged<Prompt> onPromptSubmit;
  final Collections_Collection collection;

  @override
  Widget build(BuildContext context) {
    return _ChatFrame(
      child: PromptInput(
        onPromptSubmit: onPromptSubmit,
        collection: collection,
      ),
    );
  }
}

class ChatFragment extends StatelessWidget {
  const ChatFragment({
    super.key,
    required this.status,
    required this.collection,
  });

  final ChatFragmentStatus status;
  final Collections_Collection collection;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    Widget promptWidget;
    Widget body;

    if (status.hasError) {
      promptWidget = PromptInput(
        prompt: status.prompt,
        collection: collection,
      );
      body = TextIllustration(
        illustration: UnDrawIllustration.warning,
        text: ErrorUtils.toText(status.error),
        color: color.error,
      );
    } else if (status.completion != null) {
      promptWidget = PromptInfo(
        prompt: status.prompt,
        completion: status.completion!,
      );
      body = MarkdownBody(
        data: status.completion!.text,
        selectable: true,
      );
    } else {
      promptWidget = PromptInput(
        prompt: status.prompt,
        collection: collection,
      );
      body = TextIllustration(
        illustration: UnDrawIllustration.typewriter,
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

class ChatFragmentStatus {
  ChatFragmentStatus({
    required this.prompt,
    this.completion,
    this.error,
  });

  final Prompt prompt;
  ChatMessage? completion;
  Object? error;

  bool get hasError => error != null;
}
