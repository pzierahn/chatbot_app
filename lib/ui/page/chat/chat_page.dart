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
              'Explain the Practical Byzantine Fault Tolerance (PBFT) algorithm in detail',
              style: text.titleMedium,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 8,
            ),
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: MarkdownBody(data: ""),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
