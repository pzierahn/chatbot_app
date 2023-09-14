import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/chat/chat_fragment.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _prompts = <Prompt>[];
  final _completions = <Future<Completion>>[];

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    for (int index = 0; index <= _prompts.length; index++) {
      final fragment = ChatFragment(
        prompt: index < _prompts.length ? _prompts[index] : null,
        completion: index < _completions.length ? _completions[index] : null,
        collection: widget.collection,
        onPromptSubmit: (prompt) {
          setState(() {
            prompt.collection = widget.collection.id;

            _prompts.add(prompt);
            _completions.add(braingain.chat(prompt));
          });
        },
      );

      children.add(
        Align(
          child: Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(
              maxWidth: 800,
            ),
            child: fragment,
          ),
        ),
      );
    }

    return ListView(
      children: children,
    );
  }
}
