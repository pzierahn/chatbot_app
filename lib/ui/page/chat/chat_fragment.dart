import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/generated/collections.pb.dart';
import 'package:braingain_app/ui/page/chat/chat_frame.dart';
import 'package:braingain_app/ui/page/chat/generating_fragment.dart';
import 'package:braingain_app/ui/page/chat/prompt_info.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/page/chat/footer_actions.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:undraw/undraw.dart';

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
    Widget? divider = const Divider(height: 1);
    Widget body;
    Widget? footer;

    if (status.hasError) {
      promptWidget = PromptInput(
        prompt: status.prompt.prompt,
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

      divider = null;

      footer = FooterActions(
        message: status.completion!,
      );
    } else {
      promptWidget = PromptInput(
        prompt: status.prompt.prompt,
        collection: collection,
      );
      divider = const LinearProgressIndicator(minHeight: 2);
      body = const GeneratingFragment();
    }

    return ChatFrame(
      title: promptWidget,
      divider: divider,
      body: body,
      footer: footer,
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
