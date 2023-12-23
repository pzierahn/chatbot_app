import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/generated/collections.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/chat_fragment.dart';
import 'package:braingain_app/ui/page/chat/chat_fragment_input.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/utils/error.dart';
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
    final textTheme = Theme.of(context).textTheme;

    final children = <Widget>[];

    if (widget.collection.documentCount == 0) {
      final waring = Card(
        color: color.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: color.outlineVariant,
            width: 1.0,
          ),
        ),
        margin: const EdgeInsets.all(16),
        child: ListTile(
          title: Text(
            'No documents in collection',
            style: textTheme.titleMedium,
          ),
          subtitle: Text(
            'If no documents are uploaded, the chatbot will not be able to answer questions',
            style: textTheme.bodySmall,
          ),
          leading: const Icon(
            Icons.warning,
            color: Colors.orange,
          ),
          trailing: TextButton.icon(
            onPressed: () => UploadPage.openWithDialog(
              context,
              widget.collection,
            ),
            icon: const Icon(Icons.upload_file),
            label: const Text('Upload'),
          ),
        ),
      );

      children.add(waring);
    }

    for (int index = 0; index < _status.length; index++) {
      final fragment = ChatFragment(
        status: _status[index],
        collection: widget.collection,
        onDelete: () {
          if (_status[index].completion == null) {
            setState(() => _status.removeAt(index));
            return;
          }

          chat
              .deleteChatMessage(
                MessageID()..id = _status[index].completion!.id,
              )
              .then((value) => null)
              .catchError((error) {
            ErrorSnackBar.show(context, error);
          });

          setState(() => _status.removeAt(index));
        },
      );

      children.add(fragment);
    }

    children.add(ChatInput(
      onPromptSubmit: (prompt) {
        print('ChatInput: onPromptSubmit ${prompt.modelOptions}');
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
