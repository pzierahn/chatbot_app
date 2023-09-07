import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/home_v2/chat_body.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({
    super.key,
  });

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _prompts = <String>[];
  final _completions = <Future<ChatCompletion>>[];

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final children = <Widget>[];
    for (int index = 0; index <= _prompts.length; index++) {
      children.add(ChatFragment(
        prompt: index < _prompts.length ? _prompts[index] : null,
        completion: index < _completions.length ? _completions[index] : null,
        onPromptChanged: (value) {
          final req = Prompt();
          req.prompt = value;

          setState(() {
            _prompts.add(value);
            _completions.add(braingain.chat(req));
          });
        },
      ));
    }

    return ListView(
      children: children,
    );
  }
}
