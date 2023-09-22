import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat_history/history_tile.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class ChatHistoryPage extends StatelessWidget {
  const ChatHistoryPage({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  static Future<void> open(
      BuildContext context, Collections_Collection collection) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChatHistoryPage(collection: collection),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History ${collection.name}'),
      ),
      body: FutureBuilder<ChatMessages>(
          future: brainboost.getChatMessages(Collection()..id = collection.id),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }

            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.data!.ids.isEmpty) {
              return const Center(
                child: TextIllustration(
                  illustration: UnDrawIllustration.waiting_for_you,
                  text: 'No history yet',
                ),
              );
            }

            return ConstrainedListViewBuilder(
              itemCount: snapshot.data!.ids.length,
              itemBuilder: (context, index) {
                final id = snapshot.data!.ids[index];
                return ChatHistoryTile(chatId: id);
              },
            );
          }),
    );
  }
}
