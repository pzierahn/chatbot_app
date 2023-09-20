import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:flutter/material.dart';

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
        title: Text(collection.name),
      ),
      body: const Center(
        child: Text('Chat History'),
      ),
    );
  }
}
