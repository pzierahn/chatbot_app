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

    return FutureBuilder<Completion>(
        future: braingain.getChatMessage(MessageID()..id = chatId),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ListTile(
              leading: const Icon(Icons.error_outline),
              title: Text(
                snapshot.error.toString(),
                style: TextStyle(color: color.error),
              ),
            );
          }

          if (!snapshot.hasData) {
            return const ListTile(
              leading: CircularProgressIndicator(),
              title: Text('Loading...'),
            );
          }

          final message = snapshot.data!;
          final time = message.timestamp.toDateTime();

          return ListTile(
            leading: const Icon(Icons.history_outlined),
            trailing: Text(time.toLocal().toString()),
            title: Text(message.prompt.prompt),
            subtitle: Text(
              message.text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          );
        });
  }
}
