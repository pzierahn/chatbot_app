import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/generated/collections.pb.dart';
import 'package:braingain_app/ui/page/chat/chat_frame.dart';
import 'package:braingain_app/ui/page/chat/prompt_buttons.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({
    super.key,
    required this.onPromptSubmit,
    required this.collection,
  });

  final ValueChanged<Prompt> onPromptSubmit;
  final Collections_Collection collection;

  @override
  State createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  late Prompt prompt;

  @override
  void initState() {
    super.initState();
    prompt = Prompt();

    // Set default options
    prompt.options = PromptOptions()
      ..model = 'gpt-3.5-turbo-16k'
      ..temperature = 0.0
      ..maxTokens = 1024
      ..limit = 15
      ..threshold = 0.6;
  }

  @override
  Widget build(BuildContext context) {
    return ChatFrame(
      title: PromptInput(
        onPromptSubmit: (text) {
          setState(() {
            prompt.prompt = text;
          });

          widget.onPromptSubmit.call(prompt);
        },
        collection: widget.collection,
      ),
      divider: const Divider(height: 1),
      body: PromptButtons(
        prompt: prompt,
        collection: widget.collection,
        onPromptChanged: (update) {
          setState(() {
            prompt = update;
          });
        },
      ),
    );
  }
}
