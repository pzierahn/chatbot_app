import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class SourcesDialog extends StatefulWidget {
  const SourcesDialog({
    super.key,
    required this.sources,
  });

  final List<ChatMessage_Document> sources;

  static Future<void> show(
    BuildContext context,
    List<ChatMessage_Document> documents,
  ) {
    return showDialog(
      context: context,
      builder: (context) => SourcesDialog(sources: documents),
    );
  }

  @override
  State createState() => _SourcesDialogState();
}

class _SourcesDialogState extends State<SourcesDialog> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final sources = widget.sources;
    sources.sort((a, b) => a.filename.compareTo(b.filename));

    Widget body;

    if (sources.isNotEmpty) {
      body = ListView.separated(
        itemCount: sources.length,
        separatorBuilder: (context, index) => const Divider(height: 32),
        itemBuilder: (context, index) {
          final source = widget.sources[index];

          final mapping = <int, double>{};
          for (int inx = 0; inx < source.pages.length; inx++) {
            final page = source.pages[inx];
            if (source.scores.length <= inx) {
              mapping[page] = 0;
              continue;
            }

            mapping[page] = source.scores[inx];
          }

          final pages = source.pages;
          pages.sort((a, b) => a.compareTo(b));

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  source.filename,
                  style: text.titleSmall?.merge(TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                  )),
                  maxLines: 1,
                ),
                for (int inx = 0; inx < source.pages.length; inx++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Page ${pages[inx]} --> ${(100 * mapping[pages[inx]]!).toStringAsFixed(0)}%',
                        style: text.bodySmall,
                        textAlign: TextAlign.center,
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
