import 'package:braingain_app/ui/page/chat/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

const _questions = [
  "Explain the Practical Byzantine Fault Tolerance (PBFT) algorithm in detail",
  "What is the difference between the Practical Byzantine Fault Tolerance (PBFT) algorithm and the DAG-Rider algorithm?",
  "How does the DAG-Rider algorithm work?",
  "Why does the DAG-Rider algorithm needs waves?",
  "Explain the DAG-Rider algorithm in detail",
  "Which properties of an Operation-Based CRDT have to be shown?",
  "How does a Sybil Attack with Distributed Secret Sharing work?",
  "How is consensus archived in total order broadcasts?",
];

class _HomeState extends State<Home> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Braingain",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              children: [
                UnDraw(
                  illustration: UnDrawIllustration.chat,
                  color: color.primary,
                  width: 350,
                ),
                for (var question in _questions)
                  Center(
                    child: Container(
                      padding: const EdgeInsets.only(top: 16),
                      constraints: const BoxConstraints(
                        maxWidth: 600,
                      ),
                      child: ListTile(
                        titleTextStyle: text.bodySmall?.merge(TextStyle(
                          color: color.outline,
                        )),
                        title: Text(
                          question,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.chat),
        label: const Text('Start'),
        onPressed: () => ChatPage.open(context),
      ),
    );
  }
}
