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

    final iconColor = color.onSurface;
    final titleStyle = text.bodyMedium?.copyWith(
      color: color.onSurface,
    );
    final subtitleStyle = text.bodySmall?.copyWith(
      color: color.outline,
    );

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
            leading: Icon(
              Icons.psychology_outlined,
              color: iconColor,
            ),
            title: Text(
              'Select Model',
              style: titleStyle,
            ),
            subtitle: Text(
              LLMModels.fromModel(prompt.modelOptions.modelId).title,
              style: subtitleStyle,
            ),
            onTap: _onSelectModel,
            hoverColor: color.primaryContainer,
          ),
          ListTile(
            enabled: prompt.attachments.isEmpty,
            leading: Icon(
              Icons.manage_search_outlined,
              color: color.onSurface,
            ),
            title: Text(
              'Retrieval Options',
              style: titleStyle,
            ),
            subtitle: Text(
              'Set how many documents to retrieve and other retrieval options',
              style: subtitleStyle,
            ),
            onTap: _onShowParameter,
            hoverColor: color.primaryContainer,
          ),
        ],
      ),
    );
  }
}
