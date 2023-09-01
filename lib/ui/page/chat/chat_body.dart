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

    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          color: color.surfaceVariant.withOpacity(0.5),
          child: SelectableText(
            completion.prompt,
            style: text.headlineSmall?.merge(
              TextStyle(color: color.onSurfaceVariant),
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
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: (completion.sources.isNotEmpty)
              ? Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: completion.sources
                      .map((source) => ActionChip(
                            backgroundColor: color.secondaryContainer,
                            labelStyle: TextStyle(
                              color: color.onSecondaryContainer,
                            ),
                            label: FutureBuilder<Document>(
                                future: braingain
                                    .getDocument(DocumentId()..id = source.id),
                                builder: (context, snap) =>
                                    Text(snap.data?.filename ?? "Loading...")),
                            onPressed: () {},
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
