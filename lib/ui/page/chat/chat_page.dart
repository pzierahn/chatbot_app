import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/chat/chat_body.dart';
import 'package:braingain_app/ui/page/chat/chat_field.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static Future<Object?> open(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChatPage()),
    );
  }

  @override
  State createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _requests = <Future<ChatCompletion>>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ConstrainedListView(
              maxWidth: 600,
              children: _requests
                  .map(
                    (future) => FutureBuilder<ChatCompletion>(
                      future: future,
                      builder: (context, snap) {
                        if (snap.hasError) {
                          return Text("Error: ${snap.error}");
                        }

                        if (!snap.hasData) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        return ChatBody(completion: snap.data!);
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
          ChatField(
            onSubmitted: (text) {
              final prompt = Prompt();
              prompt.prompt = text;

              setState(() {
                _requests.add(braingain.chat(prompt));
              });
            },
          ),
        ],
      ),
    );
  }
}
