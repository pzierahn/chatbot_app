import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/generated/collection_service.pb.dart';
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
    prompt = Prompt()
      ..limit = 15
      ..threshold = 0.6;

    // Set default options
    prompt.modelOptions = ModelOptions()
      ..model = 'gpt-4-turbo-preview'
      ..temperature = 0.0
      ..maxTokens = 1024;
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
