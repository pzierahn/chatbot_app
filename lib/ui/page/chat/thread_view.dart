import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/ui/widget/generating_text.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/page/chat/session_handler.dart';
import 'package:braingain_app/ui/widget/markdown.dart';
import 'package:braingain_app/ui/widget/sources_dialog.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    if (thread.deleted) {
      return const SizedBox();
    }

    final colors = Theme.of(context).colorScheme;

    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.titleMedium?.copyWith(
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
            onDelete: () => ConfirmDialog.show(
              context,
              title: (inx == 0) ? 'Delete Thread?' : 'Delete Message?',
              content: (inx == 0)
                  ? 'Are you sure you want to delete this entire thread?'
                  : 'Are you sure you want to delete this message?',
              onConfirm: () {
                if (inx == 0) {
                  widget.thread.deleteThread();
                } else {
                  widget.thread.deleteMessageFromThread(inx);
                }
              },
            ),
          ),
        );
      }
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
          subtitle: SelectableText(ErrorUtils.toText(thread.error)),
        ),
      );
      children.add(err);
    }

    if (widget.thread.isLoading && !widget.thread.hasError) {
      final loading = Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            widget.thread.pendingPrompt!,
            style: titleStyle,
          ),
          subtitle: const GeneratingText(),
        ),
      );
      children.add(loading);
    }

    if (!widget.thread.isLoading) {
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
    }

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
    this.onDelete,
  });

  final TextStyle? titleStyle;
  final Message message;
  final List<String>? referenceIDs;
  final Map<String, double>? referenceScores;
  final VoidCallback? onDelete;

  void _showSources(BuildContext context) {
    if (referenceIDs == null) {
      return;
    }

    showDialog(
      context: context,
      builder: (context) => SourcesDialog(
        references: referenceIDs!,
        scores: referenceScores ?? const {},
      ),
    );
  }

  void _copyToClipboard(BuildContext context) {
    Clipboard.setData(
      ClipboardData(text: message.completion),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Copied to clipboard'),
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
                child: StyledMarkdown(
                  data: message.completion,
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
                onPressed: () => _copyToClipboard(context),
                color: colors.outline,
              ),
              IconButton(
                tooltip: 'Delete',
                icon: const Icon(Icons.delete_outline),
                onPressed: onDelete,
                color: colors.outline,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
