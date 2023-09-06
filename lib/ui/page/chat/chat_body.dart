import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({
    super.key,
    required this.completion,
  });

  final ChatCompletion completion;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final sourceIds = <String>{};
    final pages = <String, List<int>>{};

    for (var source in completion.sources) {
      sourceIds.add(source.id);
      pages.putIfAbsent(source.id, () => []);
      pages[source.id]?.add(source.page);
    }

    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 0.5,
                color: color.outline,
              ),
              bottom: BorderSide(
                width: 0.5,
                color: color.outline,
              ),
            ),
            color: color.surfaceVariant.withOpacity(0.2),
          ),
          child: SelectableText(
            completion.prompt,
            style: text.bodyMedium?.merge(
              TextStyle(
                color: color.onSurfaceVariant,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Column(
            children: [
              MarkdownBody(
                data: completion.completion,
                selectable: true,
              ),
            ],
          ),
        ),
        const Divider(
          indent: 16,
          endIndent: 16,
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: (completion.sources.isNotEmpty)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: sourceIds
                      .map((source) => FutureBuilder<Document>(
                            future: braingain
                                .getDocument(DocumentId()..id = source),
                            builder: (context, snap) => Text(
                              "${snap.data?.filename}: ${pages[source]}",
                              style: text.bodySmall?.merge(
                                TextStyle(
                                  color: color.outline,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                )
              : Text(
                  'No sources available',
                  style: text.bodySmall?.merge(TextStyle(
                    color: color.outline,
                  )),
                ),
        ),
      ],
    );
  }
}
