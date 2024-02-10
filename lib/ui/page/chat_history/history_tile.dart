import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ChatHistoryTile extends StatelessWidget {
  const ChatHistoryTile({
    super.key,
    required this.threahId,
  });

  final String threahId;

  void _onViewChat(BuildContext context, Thread thread) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Chat'),
          ),
          body: ConstrainedListView(
            children: thread.messages.map((message) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    message.prompt,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: MarkdownBody(
                      data: message.completion,
                      selectable: true,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return FutureBuilder<Thread>(
        future: chat.getThread(ThreadID()..id = threahId),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ListTile(
              leading: const Icon(Icons.error_outline),
              title: Text(
                snapshot.error.toString(),
                style: text.titleMedium?.merge(TextStyle(color: color.error)),
              ),
            );
          }

          if (!snapshot.hasData) {
            return ListTile(
              title: Text(
                'Loading...',
                style: text.titleMedium,
              ),
              subtitle: Text(
                threahId,
                style: text.bodySmall?.merge(TextStyle(
                  color: color.outline,
                )),
              ),
            );
          }

          final thread = snapshot.data!;

          if (thread.messages.isEmpty) {
            return const SizedBox();
          }

          final message = thread.messages.first;
          final date = message.timestamp.toDateTime(toLocal: true);

          return ListTile(
            title: Text(
              message.prompt,
              style: text.titleMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            // minLeadingWidth: 40,
            subtitle: Text(
              date.toString(),
              style: text.bodySmall?.copyWith(
                color: color.outline,
              ),
            ),
            onTap: () => _onViewChat(context, thread),
          );
        });
  }
}
