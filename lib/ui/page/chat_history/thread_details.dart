import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/ui/widget/markdown.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/sources_dialog.dart';
import 'package:braingain_app/utils/source.dart';
import 'package:flutter/material.dart';

class ThreadDetails extends StatelessWidget {
  const ThreadDetails({
    super.key,
    required this.thread,
  });

  final Thread thread;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final children = <Widget>[];

    for (final message in thread.messages) {
      final content = SourceText(message);

      children.addAll([
        SizedBox(
          width: double.infinity,
          child: SelectableText(
            message.prompt,
            style: textTheme.headlineSmall,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          width: double.infinity,
          child: StyledMarkdown(
            data: content.toMarkdown(),
            onTapLink: (String text, String? href, String title) {
              if (content.containsCites(href)) {
                showChunkDetails(context, content.getFragment(href));
              }
            },
          ),
        ),
      ]);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thread'),
      ),
      body: ConstrainedListView(
        children: children,
      ),
    );
  }
}
