import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/page/chat/sources_dialog.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';

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
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          return const Center(
            child: Text('Error loading chat'),
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
    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.titleMedium;

    return ThreadContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var message in widget.thread.messages)
            Column(
              children: [
                ListTile(
                  title: Text(
                    message.prompt,
                    style: titleStyle,
                  ),
                  subtitle: Text(message.completion),
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        tooltip: 'References',
                        icon: const Icon(Icons.attach_file_outlined),
                        onPressed: _showSources,
                      ),
                      // const SizedBox(width: 8),
                      // const Spacer(),
                      IconButton(
                        tooltip: 'Copy',
                        icon: const Icon(Icons.copy_outlined),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: 'Delete',
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () {},
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
                    title: Text('Loading...'),
                  );
                }

                if (snapshot.hasError) {
                  return ListTile(
                    title: const Text('Error'),
                    subtitle: Text(ErrorUtils.toText(snapshot.error)),
                  );
                }

                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        snapshot.data!.prompt,
                        style: titleStyle,
                      ),
                      subtitle: Text(snapshot.data!.completion),
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            tooltip: 'Copy',
                            icon: const Icon(Icons.copy_outlined),
                            onPressed: () {},
                          ),
                          // const Spacer(),
                          IconButton(
                            tooltip: 'Delete',
                            icon: const Icon(Icons.delete_outline),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ListTile(
            title: PromptInput(
              style: titleStyle,
              hintText: 'Type a follow-up question or prompt...',
              onPromptSubmit: (text) {
                setState(() {
                  final model = ModelOptions()..model = "gpt-3.5-turbo-16k";

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
