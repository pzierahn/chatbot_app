import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/home/documents.dart';
import 'package:braingain_app/ui/page/home/options.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromptInput extends StatelessWidget {
  PromptInput({
    super.key,
    Prompt? prompt,
    this.completion,
    required this.onPromptSubmit,
  }) : prompt = prompt ?? Prompt();

  final Prompt prompt;
  final Completion? completion;
  final ValueChanged<Prompt> onPromptSubmit;

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final textStyles = text.titleLarge?.merge(GoogleFonts.robotoSerif(
      fontWeight: FontWeight.w600,
    ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        prompt.prompt.isEmpty
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      maxLines: null,
                      style: textStyles,
                      onSubmitted: (value) {
                        prompt.prompt = value;
                        onPromptSubmit(prompt);
                      },
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type a prompt',
                        hintStyle: textStyles,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (_controller.text.isNotEmpty) {
                        prompt.prompt = _controller.text;
                        onPromptSubmit(prompt);
                      }
                    },
                    color: color.primary,
                    tooltip: 'Submit',
                    icon: const Icon(Icons.send),
                  ),
                ],
              )
            : SelectableText(
                prompt.prompt,
                style: textStyles,
                textAlign: TextAlign.start,
              ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ActionChip(
                avatar: Icon(
                  Icons.tune_outlined,
                  size: 16,
                  color: color.onSurfaceVariant,
                ),
                backgroundColor: color.surfaceVariant.withOpacity(0.25),
                label: Text(
                  'Parameters',
                  style: text.bodySmall,
                ),
                labelStyle: TextStyle(
                  color: color.onSurfaceVariant,
                ),
                onPressed: () {
                  showOptions(context);
                },
                side: BorderSide(
                  color: color.outlineVariant,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              ActionChip(
                avatar: prompt.documents.isEmpty
                    ? Icon(
                        Icons.add,
                        size: 16,
                        color: color.onSurfaceVariant,
                      )
                    : Icon(
                        Icons.description_outlined,
                        size: 16,
                        color: color.onSurfaceVariant,
                      ),
                backgroundColor: color.surfaceVariant.withOpacity(0.25),
                label: Text(
                  'Documents',
                  style: text.bodySmall,
                ),
                labelStyle: TextStyle(
                  color: color.onSurfaceVariant,
                ),
                onPressed: () async {
                  SelectDocumentsDialog.show(context);
                },
                side: BorderSide(
                  color: color.outlineVariant,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
