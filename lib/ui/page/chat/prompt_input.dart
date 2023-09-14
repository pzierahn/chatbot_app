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

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final textStyle = text.titleLarge?.merge(TextStyle(
      fontWeight: FontWeight.w500,
      color: onPromptSubmit != null ? color.onSurface : color.outline,
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _controller,
          enabled: onPromptSubmit != null,
          maxLines: null,
          style: textStyle,
          onSubmitted: onPromptSubmit != null
              ? (value) {
                  prompt.prompt = value;
                  onPromptSubmit?.call(prompt);
                }
              : null,
          decoration: InputDecoration(
            hintText: 'Type a prompt',
            hintStyle: textStyle,
            filled: true,
            fillColor: color.surfaceVariant.withOpacity(0.2),
            // label: Text(
            //   'Prompt',
            //   // style: textStyle,
            //   style: TextStyle(
            //     color: color.primary,
            //   ),
            // ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: color.primary,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: color.outlineVariant,
                width: 1.0,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: color.outlineVariant,
                width: 1.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
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
              const SizedBox(width: 16),
              ParameterButton(
                options: prompt.options,
                onChanged: onPromptSubmit != null
                    ? (parameter) {
                        prompt.options = parameter;
                      }
                    : null,
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: onPromptSubmit != null
                    ? () {
                        if (_controller.text.isNotEmpty) {
                          prompt.prompt = _controller.text;
                          onPromptSubmit?.call(prompt);
                        }
                      }
                    : null,
                label: const Text('Submit'),
                icon: const Icon(Icons.send),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
