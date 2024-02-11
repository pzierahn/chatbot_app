import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat_history/history_tile.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_body.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/ui/widget/simple_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class ChatHistoryPage extends StatelessWidget {
  const ChatHistoryPage({super.key});

  static const route = 'chat-history';

  static Future<Object?> open(
    BuildContext context,
    Collection collection,
  ) =>
      Navigator.of(context).pushNamed(route, arguments: collection);

  @override
  Widget build(BuildContext context) {
    final collection =
        ModalRoute.of(context)?.settings.arguments as Collection?;

    if (collection == null) {
      return const ErrorScaffold(
        title: 'Chat History',
        error: 'No collection found',
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('History: ${collection.name}'),
      ),
      body: FutureBuilder<ThreadIDs>(
          future: chat.listThreadIDs(Collection()..id = collection.id),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return ErrorBody(
                error: snapshot.error,
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
                return ChatHistoryTile(threahId: id);
              },
            );
          }),
    );
  }
}
