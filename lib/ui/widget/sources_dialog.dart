import 'package:braingain_app/generated/document_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/utils/document.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class SourcesDialog extends StatefulWidget {
  const SourcesDialog({
    super.key,
    required this.references,
    this.scores = const {},
  });

  final List<String> references;
  final Map<String, double> scores;

  @override
  State createState() => _SourcesDialogState();
}

class _SourcesDialogState extends State<SourcesDialog> {
  void _showChunkDetails(Chunk chunk) {
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
                subtitle: SelectableText(chunk.index.toString()),
              ),
              ListTile(
                title: const Text('Text'),
                subtitle: SelectableText(chunk.text),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final sources = widget.references;

    Widget body;

    if (sources.isNotEmpty) {
      body = FutureBuilder<References>(
        future: documents.getReferences(
          ReferenceIDs()..items.addAll(sources),
        ),
        builder: (context, snap) {
          if (snap.hasError) {
            return Center(
              child: TextIllustration(
                illustration: UnDrawIllustration.by_the_road,
                color: color.primary,
                text: 'Failed to load sources',
              ),
            );
          }

          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final references = snap.data!.items;

          return ListView.separated(
            itemCount: references.length,
            separatorBuilder: (context, index) => const Divider(height: 32),
            itemBuilder: (context, index) {
              final doc = references[index];

              String title = DocumentUtils.getTitle(doc.metadata);

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      title,
                      style: text.titleMedium,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final chunk in doc.chunks)
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.find_in_page_outlined),
                            title: Text(
                              'Page ${chunk.index + 1}',
                              style: text.bodyMedium,
                            ),
                            trailing: widget.scores.containsKey(chunk.id)
                                ? Text(
                                    'Score: ${((widget.scores[chunk.id] ?? 0) * 100).toStringAsFixed(0)}%',
                                    style: text.bodySmall?.copyWith(
                                      color: color.outline,
                                    ),
                                  )
                                : null,
                            onTap: () => _showChunkDetails(chunk),
                          ),
                      ],
                    ),
                  ],
                ),
              );
            },
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
