import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/page/chat/sources_dialog.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:braingain_app/utils/llm_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ThreadLoader extends StatelessWidget {
  const ThreadLoader({
    super.key,
    required this.thread,
  });

  final Future<Thread> thread;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Thread>(
      future: thread,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return ThreadContainer(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: const ListTile(
                leading: CircularProgressIndicator(),
                title: Text('Loading...'),
              ),
            ),
          );
        }

        if (snapshot.hasError) {
          return ThreadContainer(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: ListTile(
                title: const Text('Error'),
                subtitle: Text(ErrorUtils.toText(snapshot.error)),
              ),
            ),
          );
        }

        return ThreadView(thread: snapshot.data!);
      },
    );
  }
}

class ThreadView extends StatefulWidget {
  const ThreadView({
    super.key,
    required this.thread,
  });

  final Thread thread;

  @override
  State<StatefulWidget> createState() => _ThreadViewState();
}

class _ThreadViewState extends State<ThreadView> {
  final _followUps = <Future<Message>>[];

  void _showSources() {
    showDialog(
      context: context,
      builder: (context) => SourcesDialog(
        references: widget.thread.referenceIDs,
        scores: widget.thread.referenceScores,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.headlineSmall?.copyWith(
      fontWeight: FontWeight.bold,
    );

    const titlePadding = EdgeInsets.only(
      top: 16,
      left: 24,
      right: 24,
    );

    const bodyPadding = EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 8,
    );

    return ThreadContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var message in widget.thread.messages)
            Row(
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        tooltip: 'References',
                        icon: const Icon(Icons.attach_file_outlined),
                        onPressed: _showSources,
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
            ),
          for (var followUp in _followUps)
            FutureBuilder<Message>(
              future: followUp,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const ListTile(
                    leading: CircularProgressIndicator(),
                    title: Text('Loading...'),
                  );
                }

                if (snapshot.hasError) {
                  return ListTile(
                    title: const Text('Error'),
                    subtitle: Text(ErrorUtils.toText(snapshot.error)),
                  );
                }

                final message = snapshot.data!;

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
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
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
              },
            ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 4,
            ),
            child: PromptInput(
              style: textTheme.titleMedium?.copyWith(
                color: colors.primary,
              ),
              hintText: 'Type a follow-up question or prompt...',
              onPromptSubmit: (text) {
                setState(() {
                  final model = ModelOptions()..model = LLMModels.gpt3.model;

                  final prompt = Prompt()
                    ..threadID = widget.thread.id
                    ..prompt = text
                    ..modelOptions = model;

                  final question = chat.postMessage(prompt);

                  setState(() {
                    _followUps.add(question);
                  });
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
