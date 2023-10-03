import 'package:braingain_app/generated/collections.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/chat_fragment.dart';
import 'package:braingain_app/ui/page/chat/chat_fragment_input.dart';
import 'package:braingain_app/ui/page/chat_history/chat_history_page.dart';
import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final _status = <ChatFragmentStatus>[];

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    final children = <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Text(
              widget.collection.name,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Type your question to learn more about ${widget.collection.name}\n',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {
                    ChatHistoryPage.open(context, widget.collection);
                  },
                  icon: const Icon(Icons.history),
                  label: const Text('History'),
                ),
                TextButton.icon(
                  onPressed: () {
                    CollectionPage.open(context, widget.collection);
                  },
                  icon: CircleAvatar(
                    backgroundColor: color.primary,
                    foregroundColor: color.onPrimary,
                    radius: 8,
                    child: Text(
                      '${widget.collection.documentCount}',
                      style: const TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                  label: const Text('Documents'),
                ),
                TextButton.icon(
                  onPressed: () {
                    UploadPage.openWithDialog(context, widget.collection);
                  },
                  icon: const Icon(Icons.upload_file),
                  label: const Text('Upload'),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    ];

    for (int index = 0; index < _status.length; index++) {
      final fragment = ChatFragment(
        status: _status[index],
        collection: widget.collection,
      );

      children.add(fragment);
    }

    children.add(ChatInput(
      onPromptSubmit: (prompt) {
        print('ChatInput: onPromptSubmit ${prompt.options}');
        setState(() {
          prompt.collectionId = widget.collection.id;
          final status = ChatFragmentStatus(prompt: prompt);
          final index = _status.length;

          setState(() {
            _status.add(status);
          });

          chat
              .chat(prompt)
              .then((response) => setState(() {
                    _status[index].completion = response;
                  }))
              .catchError((error) => setState(() {
                    _status[index].error = error;
                  }));
        });
      },
      collection: widget.collection,
    ));

    return ConstrainedListView(
      children: children,
    );
  }
}
