import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/prompt_info.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ChatHistoryTile extends StatelessWidget {
  const ChatHistoryTile({
    super.key,
    required this.chatId,
  });

  final String chatId;

  void _onViewChat(BuildContext context, ChatMessage message) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Chat'),
          ),
          body: ConstrainedListView(
            children: [
              PromptInfo(
                prompt: message.prompt,
                completion: message,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: MarkdownBody(
                  data: message.text,
                  selectable: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return FutureBuilder<ChatMessage>(
        future: chat.getChatMessage(MessageID()..id = chatId),
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
            title: Text(
              message.prompt.prompt,
              style: text.titleMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            // minLeadingWidth: 40,
            subtitle: Text(
              date.toString(),
              style: text.bodySmall?.merge(TextStyle(
                color: color.outline,
              )),
            ),
            onTap: () => _onViewChat(context, message),
          );
        });
  }
}
