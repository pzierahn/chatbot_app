import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class SourcesDialog extends StatefulWidget {
  const SourcesDialog({
    super.key,
    this.sources = const [],
  });

  final List<Source> sources;

  @override
  State createState() => _SourcesDialogState();
}

void showChunkDetails(BuildContext context, Source_Fragment chunk) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('Chunk Details'),
        ),
        body: ConstrainedListView(
          children: [
            ListTile(
              title: const Text('ID'),
              subtitle: SelectableText(chunk.id),
            ),
            ListTile(
              title: const Text('Index'),
              subtitle: SelectableText(chunk.position.toString()),
            ),
            ListTile(
              title: const Text('Text'),
              subtitle: SelectableText(chunk.content),
            ),
          ],
        ),
      ),
    ),
  );
}

class _SourcesDialogState extends State<SourcesDialog> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final sources = widget.sources;

    Widget body;

    if (sources.isNotEmpty) {
      body = ListView.separated(
        itemCount: sources.length,
        separatorBuilder: (context, index) => const Divider(height: 32),
        itemBuilder: (context, index) {
          final doc = sources[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  doc.name,
                  style: text.titleMedium,
                  maxLines: 1,
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (final chunk in doc.fragments)
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(Icons.find_in_page_outlined),
                        title: Text(
                          'Page ${chunk.position + 1}',
                          style: text.bodyMedium,
                        ),
                        trailing: Text(
                          'Score: ${(chunk.score * 100).toStringAsFixed(0)}%',
                          style: text.bodySmall?.copyWith(
                            color: color.outline,
                          ),
                        ),
                        onTap: () => showChunkDetails(context, chunk),
                      ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    } else {
      body = Center(
        child: TextIllustration(
          illustration: UnDrawIllustration.empty,
          color: color.primary,
          text: 'No documents found for prompt',
        ),
      );
    }

    return AlertDialog(
      title: const Text('Sources'),
      content: SizedBox(
        height: 400,
        width: 400,
        child: body,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
