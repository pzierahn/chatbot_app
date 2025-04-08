import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/generated/notion_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/generating_text.dart';
import 'package:braingain_app/utils/llm_models.dart';
import 'package:flutter/material.dart';

class NotionPage extends StatefulWidget {
  const NotionPage({
    super.key,
    required this.title,
    required this.databaseID,
    required this.collectionID,
  });

  final String title;
  final String databaseID;
  final String collectionID;

  @override
  State createState() => _NotionPageState();
}

class _NotionPageState extends State<NotionPage> {
  final _controller = TextEditingController();

  final _prompts = <String>[];
  final _status = <Set<String>>[];

  LLMModel _model = LLMModels.geminiFlash;

  void _sendPrompt() {
    final prompt = _controller.text;
    _controller.clear();

    if (prompt.isEmpty) {
      return;
    }

    final idx = _prompts.length;
    setState(() {
      _prompts.add(prompt);
      _status.add(<String>{});
    });

    final model = ModelOptions()
      ..modelId = _model.model
      ..temperature = 1.0
      ..topP = 1.0
      ..maxTokens = 256;

    final request = NotionPrompt()
      ..databaseId = widget.databaseID
      ..collectionId = widget.collectionID
      ..prompt = prompt
      ..modelOptions = model;

    notion.executePrompt(request).then((stream) {
      stream.forEach((event) {
        setState(() {
          _status[idx].add(event.document);
        });
      }).catchError((error) {
        ErrorSnackBar.show(context, error);
      });
    }).catchError((error) {
      ErrorSnackBar.show(context, error);
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final children = <Widget>[
      ThreadContainer(
        outlineColor: Colors.transparent,
        margins: EdgeInsets.symmetric(horizontal: 16),
        child: ListTile(
          title: const Text('How this works:'),
          subtitle: Text(
            '1. Create a column named "ID" in your Notion database\n'
            '2. Insert your Brainboost document names in the "ID" column. For example "Vorlesung-1.pdf"\n'
            '3. Type a question or prompt in the text field below. Brainboost will execute your prompt in parallel on all documents and store the results in your Notion database\n',
            style: TextStyle(color: color.outline),
          ),
        ),
      ),
      ThreadContainer(
        outlineColor: Colors.transparent,
        margins: EdgeInsets.symmetric(horizontal: 16),
        child: ListTile(
          title: const Text('Select model'),
          subtitle: Wrap(
            spacing: 12,
            children: [
              LLMModels.geminiFlash,
              LLMModels.gpt4o,
            ].map((model) {
              return ChoiceChip(
                label: Text(model.title),
                selected: model == _model,
                onSelected: (_) {
                  setState(() {
                    _model = model;
                  });
                },
              );
            }).toList(),
          ),
        ),
      ),
    ];

    for (var idx = 0; idx < _prompts.length; idx++) {
      final status = _status[idx];

      children.add(ThreadContainer(
        child: ListTile(
          title: SelectableText(
            _prompts[idx],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: status.isEmpty
              ? const GeneratingText()
              : Text(
                  status.join(', '),
                  style: TextStyle(color: color.outline),
                ),
        ),
      ));
    }

    final textStyle = text.titleMedium?.copyWith(fontWeight: FontWeight.bold);

    children.add(ThreadContainer(
      child: ListTile(
        title: TextField(
          controller: _controller,
          style: textStyle,
          keyboardType: TextInputType.text,
          maxLines: null,
          decoration: const InputDecoration.collapsed(
            hintText: 'Type a question or prompt...',
          ),
          onSubmitted: (_) {
            _sendPrompt();
          },
        ),
        trailing: IconButton(
          icon: const Icon(Icons.send),
          onPressed: _sendPrompt,
        ),
      ),
    ));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ConstrainedListViewStable(
        children: children,
      ),
    );
  }
}
