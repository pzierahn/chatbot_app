import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/ui/page/chat/parameter_dialog.dart';
import 'package:braingain_app/ui/page/chat/select_docs_dialog.dart';
import 'package:braingain_app/ui/page/chat/select_docs_tile.dart';
import 'package:braingain_app/ui/page/chat/select_model_dialog.dart';
import 'package:braingain_app/utils/llm_models.dart';
import 'package:flutter/material.dart';

class PromptButtons extends StatefulWidget {
  const PromptButtons({
    super.key,
    required this.prompt,
    this.onPromptChanged,
    required this.collection,
  });

  final Prompt prompt;
  final ValueChanged<Prompt>? onPromptChanged;
  final Collection collection;

  @override
  State createState() => _PromptButtonsState();
}

class _PromptButtonsState extends State<PromptButtons> {
  ValueChanged<Prompt>? get onPromptChanged => widget.onPromptChanged;

  Prompt get prompt => widget.prompt;

  DocumentSelection _docs = DocumentSelection();

  void _onSelectDocuments(DocumentSelection docs) {
    setState(() {
      prompt.attachments.clear();
      prompt.attachments.addAll(docs.getDocuments());
      _docs = docs;
    });

    onPromptChanged?.call(prompt);
  }

  void _onShowParameter() {
    ParameterDialog.show(context, prompt).then((value) {
      if (value != null) {
        onPromptChanged?.call(prompt);
      }
    });
  }

  void _onSelectModel() async {
    final model = await SelectModelDialog.show(
      context: context,
      model: prompt.modelOptions.modelId,
    );

    if (model != null) {
      setState(() {
        prompt.modelOptions.modelId = model;
      });

      onPromptChanged?.call(prompt);
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectDocsTile(
            collection: widget.collection,
            documents: _docs,
            onChanged: _onSelectDocuments,
          ),
          ListTile(
            leading: const Icon(Icons.psychology_outlined),
            title: const Text('Select Model'),
            subtitle:
                Text(LLMModels.fromModel(prompt.modelOptions.modelId).title),
            onTap: _onSelectModel,
          ),
          ListTile(
            enabled: prompt.attachments.isEmpty,
            leading: const Icon(Icons.manage_search_outlined),
            title: const Text('Retrieval Options'),
            subtitle: const Text(
              'Set how many documents to retrieve and other retrieval options',
            ),
            onTap: _onShowParameter,
          ),
        ],
      ),
    );
  }
}
