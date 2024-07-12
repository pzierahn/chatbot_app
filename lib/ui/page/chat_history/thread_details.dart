import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/ui/widget/markdown.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/sources_dialog.dart';
import 'package:braingain_app/utils/source_tool.dart';
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
    final sourceTool = SourceTool(thread.messages);

    final children = <Widget>[];

    for (final message in thread.messages) {
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
            data: sourceTool.messageToMarkdown(message.completion),
            onTapLink: (String text, String? href, String title) {
              if (sourceTool.containsCites(href)) {
                showChunkDetails(context, sourceTool.getFragment(href));
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
