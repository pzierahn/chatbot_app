import 'package:braingain_app/ui/page/chat/chat_body.dart';
import 'package:braingain_app/ui/page/chat/chat_field.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final _textController = TextEditingController();

  static Future<Object?> open(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatBody(),
          ),
          ChatField(),
        ],
      ),
    );
  }
}
