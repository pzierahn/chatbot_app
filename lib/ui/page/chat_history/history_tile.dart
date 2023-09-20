import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:flutter/material.dart';

class ChatHistoryTile extends StatelessWidget {
  const ChatHistoryTile({
    super.key,
    required this.chatId,
  });

  final String chatId;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return FutureBuilder<ChatMessage>(
        future: braingain.getChatMessage(MessageID()..id = chatId),
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
              trailing: const CircularProgressIndicator(),
              title: Text(
                'Loading...',
                style: text.titleMedium,
              ),
              subtitle: Text(
                chatId,
                style: text.bodySmall?.merge(TextStyle(
                  color: color.outline,
                )),
              ),
            );
          }

          final message = snapshot.data!;
          final date = message.timestamp.toDateTime(toLocal: true);

          return ListTile(
            title: SelectableText(
              message.prompt.prompt,
              style: text.titleMedium,
            ),
            // minLeadingWidth: 40,
            subtitle: Text(
              date.toString(),
              style: text.bodySmall?.merge(TextStyle(
                color: color.outline,
              )),
            ),
          );
        });
  }
}
