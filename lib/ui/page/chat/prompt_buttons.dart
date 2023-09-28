import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/generated/collections.pb.dart';
import 'package:braingain_app/ui/page/chat/parameter_dialog.dart';
import 'package:braingain_app/ui/page/chat/select_docs_tile.dart';
import 'package:braingain_app/ui/page/chat/select_model_dialog.dart';
import 'package:flutter/material.dart';

class PromptButtons extends StatefulWidget {
  const PromptButtons({
    super.key,
    this.prompt,
    this.onPromptChanged,
    required this.collection,
  });

  final Prompt? prompt;
  final ValueChanged<Prompt>? onPromptChanged;
  final Collections_Collection collection;

  @override
  State createState() => _PromptButtonsState();
}

class _PromptButtonsState extends State<PromptButtons> {
  late Prompt prompt;

  ValueChanged<Prompt>? get onPromptChanged => widget.onPromptChanged;

  @override
  void initState() {
    super.initState();
    if (widget.prompt != null) {
      prompt = widget.prompt!;
    } else {
      prompt = Prompt();

      // Set default options
      prompt.options = PromptOptions()
        ..model = 'gpt-3.5-turbo-16k'
        ..temperature = 0.0
        ..maxTokens = 1024
        ..limit = 10
        ..threshold = 0.6;
    }
  }

  void _onSelectDocuments(List<Prompt_Document> docs) {
    setState(() {
      prompt.documents.clear();
      prompt.documents.addAll(docs);
    });

    onPromptChanged?.call(prompt);
  }

  void _onShowParameter() {
    ParameterDialog.show(context, prompt.options).then((value) {
      if (value != null) {
        setState(() {
          prompt.options = value;
        });

        onPromptChanged?.call(prompt);
      }
    });
  }

  void _onSelectModel() async {
    final model = await SelectModelDialog.show(
      context: context,
      model: prompt.options.model,
    );

    if (model != null) {
      setState(() {
        prompt.options.model = model;
      });

      onPromptChanged?.call(prompt);
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SelectDocsTile(
          collection: widget.collection,
          documents: prompt.documents,
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
            prompt.options.model,
            style: text.bodySmall?.merge(TextStyle(
              color: color.outline,
            )),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onTap: _onSelectModel,
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
            'Set temperature, max tokens, limit, and threshold',
            style: text.bodySmall?.merge(TextStyle(
              color: color.outline,
            )),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          onTap: _onShowParameter,
        ),
      ],
    );
  }
}
