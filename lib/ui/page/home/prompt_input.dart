import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/home/select_docs_button.dart';
import 'package:braingain_app/ui/page/home/parameter_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromptInput extends StatefulWidget {
  PromptInput({
    super.key,
    Prompt? prompt,
    this.onPromptSubmit,
  }) : prompt = prompt ?? Prompt();

  final Prompt prompt;
  final ValueChanged<Prompt>? onPromptSubmit;

  @override
  State createState() => _PromptInputState();
}

class _PromptInputState extends State<PromptInput> {
  Prompt get prompt => widget.prompt;

  ValueChanged<Prompt>? get onPromptSubmit => widget.onPromptSubmit;

  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = prompt.prompt;
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final textStyle = text.titleLarge?.merge(GoogleFonts.robotoSerif(
      fontWeight: FontWeight.w600,
      color: onPromptSubmit != null ? color.onSurface : color.outline,
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
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
                decoration: InputDecoration.collapsed(
                  hintText: 'Type a prompt',
                  hintStyle: textStyle,
                ),
              ),
            ),
            IconButton(
              onPressed: onPromptSubmit != null
                  ? () {
                      if (_controller.text.isNotEmpty) {
                        prompt.prompt = _controller.text;
                        onPromptSubmit?.call(prompt);
                      }
                    }
                  : null,
              color: color.primary,
              tooltip: 'Submit',
              icon: const Icon(Icons.send),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ParameterButton(
                options: prompt.options,
                onChanged: onPromptSubmit != null
                    ? (parameter) {
                        prompt.options = parameter;
                      }
                    : null,
              ),
              SelectDocsButton(
                documents: prompt.documents,
                onChanged: onPromptSubmit != null
                    ? (docs) => setState(() {
                          prompt.documents.clear();
                          prompt.documents.addAll(docs);
                        })
                    : null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
