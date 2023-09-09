import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/home/prompt_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:undraw/undraw.dart';

class ChatFragment extends StatelessWidget {
  const ChatFragment({
    super.key,
    this.prompt,
    this.completion,
    required this.onPromptSubmit,
  });

  final Prompt? prompt;
  final Future<Completion>? completion;
  final ValueChanged<Prompt> onPromptSubmit;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    final fut = FutureBuilder<Completion>(
      future: completion,
      builder: (context, snap) {
        Widget body;

        if (completion == null) {
          body = const SizedBox();
        } else if (snap.hasError) {
          debugPrint(snap.error.toString());

          body = SizedBox(
            height: 300,
            child: UnDraw(
              illustration: UnDrawIllustration.warning,
              color: color.error,
            ),
          );
        } else if (snap.hasData) {
          body = MarkdownBody(
            data: snap.data!.text,
          );
        } else {
          body = SizedBox(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UnDraw(
                  width: 200,
                  illustration: UnDrawIllustration.in_thought,
                  color: color.primary,
                ),
                const SizedBox(height: 16),
                const SizedBox(
                  width: 200,
                  child: LinearProgressIndicator(),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Thinking...',
                ),
              ],
            ),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PromptInput(
              prompt: prompt,
              completion: snap.data,
              onPromptSubmit: onPromptSubmit,
            ),
            Padding(
              padding: completion != null
                  ? const EdgeInsets.only(top: 16)
                  : EdgeInsets.zero,
              child: body,
            ),
          ],
        );
      },
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: color.outlineVariant,
          width: 1.0,
        ),
        color: color.surface,
      ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      child: fut,
    );
  }
}
