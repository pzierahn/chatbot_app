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

  final ThreadPrompt prompt;
  final ValueChanged<ThreadPrompt>? onPromptChanged;
  final Collection collection;

  @override
  State createState() => _PromptButtonsState();
}

class _PromptButtonsState extends State<PromptButtons> {
  ValueChanged<ThreadPrompt>? get onPromptChanged => widget.onPromptChanged;

  ThreadPrompt get prompt => widget.prompt;

  DocumentSelection _docs = DocumentSelection();

  void _onSelectDocuments(DocumentSelection docs) {
    setState(() {
      prompt.documentIds.clear();
      prompt.documentIds.addAll(docs.getDocuments());
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
      model: prompt.modelOptions.model,
    );

    if (model != null) {
      setState(() {
        prompt.modelOptions.model = model;
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
            leading: Icon(
              Icons.psychology_outlined,
              color: color.onSurface,
            ),
            title: Text(
              'Select Model',
              style: text.bodyMedium?.merge(TextStyle(
                color: color.onSurface,
              )),
            ),
            subtitle: Text(
              LLMModels.fromModel(prompt.modelOptions.model).title,
              style: text.bodySmall?.merge(TextStyle(
                color: color.outline,
              )),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            onTap: _onSelectModel,
            hoverColor: color.primaryContainer,
          ),
          ListTile(
            leading: Icon(
              Icons.tune_outlined,
              color: color.onSurface,
            ),
            title: Text(
              'Parameters',
              style: text.bodyMedium?.merge(TextStyle(
                color: color.onSurface,
              )),
            ),
            subtitle: Text(
              'Set creativity and document limits',
              style: text.bodySmall?.merge(TextStyle(
                color: color.outline,
              )),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            onTap: _onShowParameter,
            hoverColor: color.primaryContainer,
          ),
        ],
      ),
    );
  }
}
