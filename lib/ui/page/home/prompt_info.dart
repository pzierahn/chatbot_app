import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/home/parameter_button.dart';
import 'package:braingain_app/ui/page/home/sources_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromptInfo extends StatelessWidget {
  const PromptInfo({
    super.key,
    required this.prompt,
    required this.completion,
  });

  final Prompt prompt;
  final Completion completion;

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
        SelectableText(
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
                  Icons.description_outlined,
                  size: 16,
                  color: color.onSurfaceVariant,
                ),
                backgroundColor: color.surfaceVariant.withOpacity(0.25),
                label: Text(
                  'Sources',
                  style: text.bodySmall,
                ),
                labelStyle: TextStyle(
                  color: color.onSurfaceVariant,
                ),
                onPressed: () {
                  SourcesDialog.show(
                    context,
                    completion.documents,
                  );
                },
                side: BorderSide(
                  color: color.outlineVariant,
                  width: 1.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              ParameterButton(
                options: completion.prompt.options,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
