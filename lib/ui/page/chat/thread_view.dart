import 'dart:collection';

import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/ui/widget/generating_text.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/page/chat/session_handler.dart';
import 'package:braingain_app/ui/widget/markdown.dart';
import 'package:braingain_app/ui/widget/sources_dialog.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:braingain_app/utils/sources.dart';
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

      for (var idx = 0; idx < messages.length; idx++) {
        final message = messages[idx];

        children.add(
          _ChatFragment(
            titleStyle: titleStyle,
            message: message,
            onDelete: () => ConfirmDialog.show(
              context,
              title: (idx == 0) ? 'Delete Thread?' : 'Delete Message?',
              content: (idx == 0)
                  ? 'Are you sure you want to delete this entire thread?'
                  : 'Are you sure you want to delete this message?',
              onConfirm: () {
                if (idx == 0) {
                  widget.thread.deleteThread();
                } else {
                  widget.thread.deleteMessageFromThread(idx);
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
    this.titleStyle,
    this.onDelete,
  });

  final TextStyle? titleStyle;
  final Message message;
  final VoidCallback? onDelete;

  void _showSources(BuildContext context, List<Source> sources) {
    showDialog(
      context: context,
      builder: (context) => SourcesDialog(
        sources: sources,
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String completion) {
    Clipboard.setData(
      ClipboardData(text: completion),
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

    final documentNames = HashMap<String, String>();
    final fragments = HashMap<String, Source_Fragment>();
    for (var source in message.sources) {
      for (var fragment in source.fragments) {
        documentNames[fragment.id] = source.name;
        fragments[fragment.id] = fragment;
      }
    }

    String completion = SourcesUtils.replaceCites(message);

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
                  data: completion,
                  onTapLink: (String text, String? href, String title) {
                    print('Link: text=$text href=$href title=$title');
                    if (fragments.containsKey(href)) {
                      showChunkDetails(context, fragments[href]!);
                    }
                  },
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
              if (message.sources.isNotEmpty)
                IconButton(
                  tooltip: 'References',
                  icon: const Icon(Icons.attach_file_outlined),
                  onPressed: () => _showSources(context, message.sources),
                  color: colors.outline,
                ),
              IconButton(
                tooltip: 'Copy',
                icon: const Icon(Icons.copy_outlined),
                onPressed: () => _copyToClipboard(context, completion),
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
