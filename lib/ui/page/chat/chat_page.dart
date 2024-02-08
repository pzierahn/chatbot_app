import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/ui/page/chat/thread_view.dart';
import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/simple_scaffold.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static const route = 'chat';

  static Future<Object?> open(
    BuildContext context,
    Collections_Collection collection,
  ) =>
      Navigator.of(context).pushNamed(
        route,
        arguments: collection,
      );

  @override
  State<StatefulWidget> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _threads = <Future<Thread>>[];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final collection =
        ModalRoute.of(context)?.settings.arguments as Collections_Collection?;

    if (collection == null) {
      return const ErrorScaffold(
        title: 'Chat',
        error: 'Collection not found',
      );
    }

    final children =
        _threads.map((thread) => ThreadLoader(thread: thread)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(collection.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.history_outlined),
            tooltip: 'Chat History',
            onPressed: () {
              // TODO: Open chat history
            },
          ),
          IconButton(
            icon: const Icon(Icons.description_outlined),
            tooltip: 'Documents',
            onPressed: () {
              CollectionPage.open(context, collection);
            },
          ),
          IconButton(
            icon: const Icon(Icons.upload_file_outlined),
            tooltip: 'Upload Documents',
            onPressed: () {
              UploadPage.openWithDialog(context, collection);
            },
          ),
        ],
      ),
      body: ConstrainedListView(
        children: [
          ...children,
          ThreadContainer(
            child: ListTile(
              title: PromptInput(
                onPromptSubmit: (value) {
                  final opts = ModelOptions()..model = "gpt-3.5-turbo-16k";

                  final prompt = ThreadPrompt()
                    ..prompt = value
                    ..collectionId = collection.id
                    ..modelOptions = opts
                    ..threshold = 0.2
                    ..limit = 3;

                  setState(() {
                    _threads.add(chat.startThread(prompt));
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
