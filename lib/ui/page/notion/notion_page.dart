import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/generated/notion.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/utils/llm_models.dart';
import 'package:flutter/material.dart';

class NotionPage extends StatefulWidget {
  const NotionPage({
    super.key,
    required this.databaseID,
    required this.collectionID,
  });

  final String databaseID;
  final String collectionID;

  @override
  State createState() => _NotionPageState();
}

class _NotionPageState extends State<NotionPage> {
  final _controller = TextEditingController();

  final _prompts = <String>[];
  final _status = <Set<String>>[];

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
      ..model = LLMModels.claudeHaiku.model
      ..temperature = 1.0
      ..topP = 1.0
      ..maxTokens = 256;

    final request = NotionPrompt()
      ..databaseID = widget.databaseID
      ..collectionID = widget.collectionID
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

    final children = <Widget>[];

    for (var idx = 0; idx < _prompts.length; idx++) {
      final status = _status[idx];

      children.add(ThreadContainer(
        child: ListTile(
          title: Text(
            _prompts[idx],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            status.isEmpty ? 'Processing' : status.join(', '),
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
        title: const Text('Notion Database'),
      ),
      body: ConstrainedListViewStable(
        children: children,
      ),
    );
  }
}
