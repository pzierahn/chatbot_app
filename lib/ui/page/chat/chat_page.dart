import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/ui/page/chat/index_button.dart';
import 'package:braingain_app/ui/page/chat/prompt_buttons.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/page/chat/session_handler.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/ui/page/chat/thread_view.dart';
import 'package:braingain_app/ui/page/chat_history/chat_history_page.dart';
import 'package:braingain_app/ui/page/documents/documents_page.dart';
import 'package:braingain_app/ui/page/notion/notion_dialog.dart';
import 'package:braingain_app/ui/page/search_documents/search_documents.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/simple_scaffold.dart';
import 'package:braingain_app/utils/llm_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static const route = 'chat';

  static Future<Object?> open(
    BuildContext context,
    Collection collection,
  ) =>
      Navigator.of(context).pushNamed(
        route,
        arguments: collection,
      );

  @override
  State<StatefulWidget> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final collection =
        ModalRoute.of(context)?.settings.arguments as Collection?;

    if (collection == null) {
      return const ErrorScaffold(
        title: 'Chat',
        error: 'Collection not found',
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(collection.name),
        actions: [
          TextButton(
            onPressed: () {
              StartNotionDialog.show(context, collection.id);
            },
            child: SvgPicture.asset(
              'assets/Notion-logo.svg',
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search Documents',
            onPressed: () {
              SearchDocumentsPage.open(context, collection);
            },
          ),
          IconButton(
            icon: const Icon(Icons.history_outlined),
            tooltip: 'Chat History',
            onPressed: () {
              ChatHistoryPage.open(context, collection);
            },
          ),
          IconButton(
            icon: const Icon(Icons.description_outlined),
            tooltip: 'Documents',
            onPressed: () {
              DocumentsPage.open(context, collection);
            },
          ),
          IndexButton(
            collectionId: collection.id,
          ),
        ],
      ),
      body: ChatBody(
        collection: collection,
      ),
    );
  }
}

class ChatBody extends StatefulWidget {
  const ChatBody({
    super.key,
    required this.collection,
  });

  final Collection collection;

  @override
  State<StatefulWidget> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  final _threads = <ThreadState>[];

  Prompt _prompt = Prompt();

  @override
  void initState() {
    super.initState();

    final opts = ModelOptions()
      ..modelId = LLMModels.claudeSonnet.model
      ..maxTokens = 2048
      ..temperature = 1.0
      ..topP = 1.0;

    final ragOpts = RetrievalOptions()
      ..documents = 10
      ..threshold = 0.40;

    _prompt = Prompt()
      ..collectionId = widget.collection.id
      ..retrievalOptions = ragOpts
      ..modelOptions = opts;
  }

  @override
  Widget build(BuildContext context) {
    final children = [];

    // if (widget.collection.documentCount == 0) {
    //   children.add(DocumentWarning(collection: widget.collection));
    // }

    for (final thread in _threads) {
      children.add(ThreadView(thread: thread));
    }

    return ConstrainedListViewStable(
      children: [
        ...children,
        ThreadContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8,
                ),
                child: PromptInput(
                  onPromptSubmit: (value) {
                    if (value.isEmpty) {
                      return;
                    }
                    _prompt.prompt = value;

                    final threadState = ThreadState.start(
                      // Use deep copy to avoid race conditions with doc clearing
                      prompt: _prompt.deepCopy(),
                      notifier: () {
                        setState(() {});
                      },
                    );

                    setState(() {
                      _threads.add(threadState);
                      // _prompt.documentIds.clear();
                    });
                  },
                ),
              ),
              const Divider(height: 1),
              PromptButtons(
                collection: widget.collection,
                prompt: _prompt,
                onPromptChanged: (prompt) {
                  setState(() => _prompt = prompt);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
