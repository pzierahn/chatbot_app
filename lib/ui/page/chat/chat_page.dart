import 'dart:collection';

import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:undraw/undraw.dart';

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
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          UnDraw(
                            illustration: UnDrawIllustration.warning,
                            color: color.error,
                            height: 200,
                            width: 200,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: 200,
                            child: Text(
                              'Error: ${snap.error}',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    }

                    if (!snap.hasData) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          UnDraw(
                            illustration: UnDrawIllustration.typewriter,
                            color: color.secondary,
                            height: 200,
                            width: 200,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            height: 50,
                            width: 50,
                            child: const LinearProgressIndicator(),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: 200,
                            child: const Text(
                              'Generating response',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    }

                    final completion = snap.data!;

                    final sources = <String, List<int>>{};
                    for (var source in completion.sources) {
                      sources.putIfAbsent(source.filename, () => []);
                      sources[source.filename]?.add(source.page);
                    }

                    return Column(
                      children: [
                        MarkdownBody(data: completion.completion),
                        const Divider(),
                        for (var source in sources.entries)
                          ListTile(
                            title: Text(source.key),
                            subtitle: Text('${source.value}'),
                          )
                      ],
                    );
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
