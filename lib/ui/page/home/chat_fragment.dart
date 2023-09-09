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
    required this.onPromptChanged,
  });

  final String? prompt;
  final Future<Completion>? completion;
  final ValueChanged<String> onPromptChanged;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PromptInput(
            prompt: prompt,
            completion: completion,
            onPromptChanged: onPromptChanged,
          ),
          Padding(
            padding: completion != null
                ? const EdgeInsets.only(top: 16)
                : EdgeInsets.zero,
            child: FutureBuilder<Completion>(
              future: completion,
              builder: (context, snap) {
                if (completion == null) {
                  return const SizedBox();
                }

                if (snap.hasError) {
                  debugPrint(snap.error.toString());

                  return SizedBox(
                    height: 300,
                    child: UnDraw(
                      illustration: UnDrawIllustration.warning,
                      color: color.error,
                    ),
                  );
                }

                if (snap.hasData) {
                  return MarkdownBody(
                    data: snap.data!.text,
                  );
                }

                return SizedBox(
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
              },
            ),
          ),
        ],
      ),
    );
  }
}
