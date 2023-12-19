import 'package:braingain_app/generated/documents.pbgrpc.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class SourcesDialog extends StatefulWidget {
  const SourcesDialog({
    super.key,
    required this.references,
    this.scores = const [],
  });

  final List<String> references;
  final List<double> scores;

  @override
  State createState() => _SourcesDialogState();
}

class _SourcesDialogState extends State<SourcesDialog> {
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
          references.sort((a, b) => a.page.compareTo(b.page));
          references.sort((a, b) => a.filename.compareTo(b.filename));

          final scores = <String, double>{};
          if (widget.scores.length == widget.references.length) {
            for (int inx = 0; inx < widget.references.length; inx++) {
              scores[widget.references[inx]] = widget.scores[inx];
            }
          }

          final filePages = <String, List<int>>{};
          final refIds = <String, List<String>>{};
          final filenames = <String, String>{};

          for (final ref in references) {
            final id = ref.documentId;
            filePages.putIfAbsent(id, () => []);
            filePages[id]?.add(ref.page);
            refIds.putIfAbsent(id, () => []);
            refIds[id]?.add(ref.id);
            filenames[id] = ref.filename;
          }

          final fileIDs = filePages.keys.toList();

          return ListView.separated(
            itemCount: fileIDs.length,
            separatorBuilder: (context, index) => const Divider(height: 32),
            itemBuilder: (context, index) {
              final docId = fileIDs[index];
              final pages = filePages[docId] ?? [];
              final ids = refIds[docId] ?? [];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      filenames[docId] ?? '',
                      style: text.titleMedium,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int inx = 0; inx < pages.length; inx++)
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.find_in_page_outlined),
                            title: Text(
                              'Page ${pages[inx] + 1}',
                              style: text.bodyMedium,
                            ),
                            trailing: scores.containsKey(ids[inx])
                                ? Text(
                                    'Score: ${((scores[ids[inx]] ?? 0) * 100).toStringAsFixed(0)}%',
                                    style: text.bodySmall?.copyWith(
                                      color: color.outline,
                                    ))
                                : null,
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
