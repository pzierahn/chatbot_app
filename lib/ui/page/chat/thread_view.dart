import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var message in widget.thread.messages)
          ListTile(
            title: Text(message.prompt),
            subtitle: Text(message.completion),
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

              return ListTile(
                title: Text(snapshot.data!.prompt),
                subtitle: Text(snapshot.data!.completion),
              );
            },
          ),
        ListTile(
          title: PromptInput(
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
        const Divider(),
      ],
    );
  }
}
