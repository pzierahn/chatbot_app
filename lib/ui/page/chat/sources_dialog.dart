import 'package:braingain_app/generated/documents.pbgrpc.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
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

          final files = references.map((e) => e.filename).toSet().toList();
          files.sort();

          final filePages = <String, List<int>>{};

          for (final ref in references) {
            final file = ref.filename;
            filePages.putIfAbsent(file, () => []);
            filePages[file]?.add(ref.page);
          }

          return ListView.separated(
            itemCount: files.length,
            separatorBuilder: (context, index) => const Divider(height: 32),
            itemBuilder: (context, index) {
              final file = files[index];
              final pages = filePages[file] ?? [];
              pages.sort();

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      file,
                      style: text.titleSmall,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: pages
                          .map(
                            (e) => Chip(
                              label: Text(
                                'Page $e',
                                style: text.caption,
                              ),
                            ),
                          )
                          .toList(),
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
