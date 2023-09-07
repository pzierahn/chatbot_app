import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:undraw/undraw.dart';

class ChatFragment extends StatelessWidget {
  const ChatFragment({
    super.key,
    this.prompt,
    this.completion,
    required this.onPromptChanged,
  });

  final String? prompt;
  final Future<ChatCompletion>? completion;
  final ValueChanged<String> onPromptChanged;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final textStyles = text.headlineMedium?.merge(const TextStyle(
      fontWeight: FontWeight.w600,
    ));

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          prompt == null
              ? TextField(
                  style: textStyles,
                  onSubmitted: (value) {
                    onPromptChanged(value);
                  },
                  decoration: InputDecoration.collapsed(
                    hintText: 'Type a question',
                    hintStyle: textStyles,
                  ),
                )
              : Text(
                  prompt ?? '',
                  style: textStyles,
                  textAlign: TextAlign.start,
                ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: FutureBuilder<ChatCompletion>(
              future: completion,
              builder: (context, snap) {
                if (completion == null) {
                  return SizedBox(
                    height: 300,
                    child: UnDraw(
                      illustration: UnDrawIllustration.questions,
                      color: color.secondary,
                    ),
                  );
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
                    data: snap.data!.completion,
                  );
                }

                return const SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 16),
                      Text(
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
