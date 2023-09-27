import 'package:braingain_app/generated/collections.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/chat_fragment.dart';
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
    final children = <Widget>[];

    for (int index = 0; index < _status.length; index++) {
      final fragment = ChatFragment(
        status: _status[index],
        collection: widget.collection,
      );

      children.add(fragment);
    }

    children.add(ChatInput(
      onPromptSubmit: (prompt) {
        setState(() {
          prompt.collectionID = widget.collection.id;
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
