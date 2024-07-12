import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat_history/thread_details.dart';
import 'package:flutter/material.dart';

class ChatHistoryTile extends StatelessWidget {
  const ChatHistoryTile({
    super.key,
    required this.threadId,
  });

  final String threadId;

  void _onViewChat(BuildContext context, Thread thread) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ThreadDetails(
          thread: thread,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return FutureBuilder<Thread>(
        future: chat.getThread(ThreadID()..id = threadId),
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
                threadId,
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

          return ListTile(
            title: Text(
              message.prompt,
              style: text.titleMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            // minLeadingWidth: 40,
            onTap: () => _onViewChat(context, thread),
          );
        });
  }
}
