import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
    required this.prompt,
  });

  final String prompt;

  static Future<Object?> open(BuildContext context, String prompt) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatPage(prompt: prompt)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final req = Prompt();
    req.prompt = prompt;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: ConstrainedListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            child: Text(
              prompt,
              style: text.titleMedium,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 8,
            ),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: FutureBuilder<ChatCompletion>(
                  future: braingain.chat(req),
                  builder: (context, snap) {
                    if (snap.hasError) {
                      return Text('Error: ${snap.error}');
                    }

                    if (!snap.hasData) {
                      return const CircularProgressIndicator();
                    }

                    final completion = snap.data!;

                    return MarkdownBody(data: completion.completion);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
