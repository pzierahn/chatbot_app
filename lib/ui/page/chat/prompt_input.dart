import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/select_docs_button.dart';
import 'package:braingain_app/ui/page/chat/parameter_button.dart';
import 'package:flutter/material.dart';

class PromptInput extends StatefulWidget {
  const PromptInput({
    super.key,
    this.prompt,
    this.onPromptSubmit,
    required this.collection,
  });

  final Prompt? prompt;
  final ValueChanged<Prompt>? onPromptSubmit;
  final Collections_Collection collection;

  @override
  State createState() => _PromptInputState();
}

class _PromptInputState extends State<PromptInput> {
  late Prompt prompt;

  ValueChanged<Prompt>? get onPromptSubmit => widget.onPromptSubmit;

  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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

    _controller.text = prompt.prompt;
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color,
          width: 1.0,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final textStyle = text.titleMedium?.merge(TextStyle(
      fontWeight: FontWeight.w400,
      color: onPromptSubmit != null ? color.onSurface : color.outline,
    ));

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _controller,
            enabled: onPromptSubmit != null,
            maxLines: null,
            style: textStyle,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onFieldSubmitted: onPromptSubmit != null
                ? (value) {
                    final valid = _formKey.currentState!.validate() &&
                        _controller.text.isNotEmpty;
                    if (valid) {
                      prompt.prompt = value;
                      onPromptSubmit?.call(prompt);
                    }
                  }
                : null,
            decoration: InputDecoration(
              labelText: 'Prompt',
              hintText: 'Type a prompt',
              hintStyle: textStyle,
              filled: true,
              fillColor: color.surfaceVariant.withOpacity(0.2),
              suffix: TextButton(
                onPressed: onPromptSubmit != null
                    ? () {
                        final valid = _formKey.currentState!.validate() &&
                            _controller.text.isNotEmpty;
                        if (valid) {
                          prompt.prompt = _controller.text;
                          onPromptSubmit?.call(prompt);
                        }
                      }
                    : null,
                child: const Text('Submit'),
              ),
              focusedBorder: _border(color.primary),
              enabledBorder: _border(color.outlineVariant),
              disabledBorder: _border(color.outlineVariant),
              errorBorder: _border(color.error),
              focusedErrorBorder: _border(color.error),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                SelectDocsButton(
                  documents: prompt.documents,
                  collection: widget.collection,
                  onChanged: onPromptSubmit != null
                      ? (docs) => setState(() {
                            prompt.documents.clear();
                            prompt.documents.addAll(docs);
                          })
                      : null,
                ),
                ParameterButton(
                  options: prompt.options,
                  onChanged: onPromptSubmit != null
                      ? (parameter) {
                          prompt.options = parameter;
                        }
                      : null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
