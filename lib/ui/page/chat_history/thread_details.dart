import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/ui/widget/sources_dialog.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_markdown_latex/flutter_markdown_latex.dart';
import 'package:markdown/markdown.dart' as md;

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
          child: MarkdownBody(
            data: message.completion,
            selectable: true,
            builders: {
              'latex': LatexElementBuilder(
                textStyle: textTheme.bodyMedium,
              ),
            },
            extensionSet: md.ExtensionSet(
              [
                LatexBlockSyntax(),
                ...md.ExtensionSet.gitHubFlavored.blockSyntaxes
              ],
              [
                md.EmojiSyntax(),
                LatexInlineSyntax(),
                ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
              ],
            ),
          ),
        ),
      ]);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thread'),
        actions: [
          IconButton(
            icon: const Icon(Icons.attach_file),
            tooltip: 'References',
            onPressed: () async {
              showDialog(
                context: context,
                builder: (context) => SourcesDialog(
                  references: thread.referenceIDs,
                  scores: thread.referenceScores,
                ),
              );
            },
          ),
        ],
      ),
      body: ConstrainedListView(
        children: children,
      ),
    );
  }
}
