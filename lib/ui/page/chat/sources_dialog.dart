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

    // TODO: Fetch document names from server

    Widget body;

    if (sources.isNotEmpty) {
      body = ListView.separated(
        itemCount: sources.length,
        separatorBuilder: (context, index) => const Divider(height: 32),
        itemBuilder: (context, index) {
          final source = widget.references[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  source,
                  style: text.titleSmall,
                  maxLines: 1,
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
