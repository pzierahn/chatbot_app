import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/page/chat/session_handler.dart';
import 'package:braingain_app/ui/page/chat/sources_dialog.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ThreadView extends StatefulWidget {
  const ThreadView({
    super.key,
    required this.thread,
  });

  final ThreadState thread;

  @override
  State<StatefulWidget> createState() => _ThreadViewState();
}

class _ThreadViewState extends State<ThreadView> {
  ThreadState get thread => widget.thread;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.headlineSmall?.copyWith(
      fontWeight: FontWeight.bold,
    );

    final children = <Widget>[];

    if (widget.thread.hasData) {
      final thread = widget.thread.thread;
      final messages = thread?.messages ?? [];

      for (var inx = 0; inx < messages.length; inx++) {
        final message = messages[inx];
        children.add(
          _ChatFragment(
            titleStyle: titleStyle,
            message: message,
            referenceIDs: (inx == 0) ? thread?.referenceIDs : null,
            referenceScores: (inx == 0) ? thread?.referenceScores : null,
          ),
        );
      }
    }

    if (widget.thread.isLoading && !thread.hasError) {
      final loading = Padding(
        padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          trailing: const CircularProgressIndicator(),
          title: Text(
            widget.thread.pendingPrompt!,
            style: titleStyle,
          ),
          subtitle: const Text('Generating...'),
        ),
      );
      children.add(loading);
    }

    if (thread.hasError) {
      final err = Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            'Error',
            style: titleStyle?.copyWith(
              color: colors.error,
            ),
          ),
          subtitle: Text(ErrorUtils.toText(thread.error)),
        ),
      );
      children.add(err);
    }

    children.addAll([
      const SizedBox(height: 16),
      const Divider(height: 1),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 4,
        ),
        child: PromptInput(
          style: textTheme.titleMedium?.copyWith(
            color: colors.outline,
            fontWeight: FontWeight.normal,
          ),
          // prefixIcon: const Icon(Icons.reply_outlined),
          hintText: 'Type a follow-up question or prompt...',
          onPromptSubmit: (text) {
            widget.thread.postMessage(text);
          },
        ),
      ),
    ]);

    return ThreadContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class _ChatFragment extends StatelessWidget {
  const _ChatFragment({
    required this.message,
    this.referenceIDs,
    this.referenceScores,
    this.titleStyle,
  });

  final TextStyle? titleStyle;
  final Message message;
  final List<String>? referenceIDs;
  final List<double>? referenceScores;

  void _showSources(BuildContext context) {
    if (referenceIDs == null) {
      return;
    }

    showDialog(
      context: context,
      builder: (context) => SourcesDialog(
        references: referenceIDs!,
        scores: referenceScores ?? const [],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    const titlePadding = EdgeInsets.only(
      top: 16,
      left: 24,
      right: 24,
    );

    const bodyPadding = EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 8,
    );

    const buttonPadding = EdgeInsets.all(16);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: titlePadding,
                child: SelectableText(
                  message.prompt,
                  style: titleStyle,
                ),
              ),
              Padding(
                padding: bodyPadding,
                child: MarkdownBody(
                  data: message.completion,
                  selectable: true,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (referenceIDs != null)
                IconButton(
                  tooltip: 'References',
                  icon: const Icon(Icons.attach_file_outlined),
                  onPressed: () => _showSources(context),
                  color: colors.outline,
                ),
              IconButton(
                tooltip: 'Copy',
                icon: const Icon(Icons.copy_outlined),
                onPressed: () {},
                color: colors.outline,
              ),
              IconButton(
                tooltip: 'Delete',
                icon: const Icon(Icons.delete_outline),
                onPressed: () {},
                color: colors.outline,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
