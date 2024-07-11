import 'dart:collection';

import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/ui/widget/generating_text.dart';
import 'package:braingain_app/ui/page/chat/prompt_input.dart';
import 'package:braingain_app/ui/page/chat/session_handler.dart';
import 'package:braingain_app/ui/widget/markdown.dart';
import 'package:braingain_app/ui/widget/sources_dialog.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _exampleText =
    '''Based on the information provided, I'll write a section for a scientific publication about respiration extraction using Lucas-Kanade and FlowNet methods. 

## Respiration Extraction Methods: Lucas-Kanade and FlowNet

Respiration rate is a crucial vital sign that provides valuable information about an individual's health status. In recent years, contactless methods for respiration extraction have gained significant attention due to their non-invasive nature and potential for continuous monitoring. Two prominent approaches in this domain are the Lucas-Kanade method and the more recent FlowNet-based techniques.

### Lucas-Kanade Method

The Lucas-Kanade method is a classical optical flow technique that has been adapted for respiration extraction. This approach relies on tracking the motion of specific features in video sequences to estimate respiratory movements \cite{7694cd11-f931-477d-821a-286d0ca6e916}. 

Key aspects of the Lucas-Kanade method for respiration extraction include:

1. Feature Selection: The method typically uses a single-step Lucas-Kanade algorithm to obtain velocities of tracked points. To improve reliability, a signal-to-noise ratio (SNR) of pixel blocks is calculated for selecting optimal tracking regions \cite{7694cd11-f931-477d-821a-286d0ca6e916}.

2. Motion Estimation: The algorithm tracks the movement of selected features across video frames, corresponding to the subtle motions of the chest and abdomen during respiration cycles.

3. Respiratory Signal Extraction: The velocity of tracked points is used to generate a respiratory signal, with zero-crossings often employed to detect inspiration and expiration phases \cite{7694cd11-f931-477d-821a-286d0ca6e916}.

While the Lucas-Kanade method has shown promise in respiration extraction, it has some limitations. Most notably, it heavily depends on local brightness gradients for reliable estimation, which can be challenging in areas with low texture or uniform appearance, such as clothing \cite{f14e00b9-3aa1-4ef3-adae-435c51b13f07}.

### FlowNet Method

FlowNet represents a more recent approach to respiration extraction, leveraging the power of convolutional neural networks (CNNs) for optical flow estimation. This method addresses some of the limitations of traditional optical flow techniques and offers several advantages:

1. Dense Prediction: Unlike the Lucas-Kanade method, FlowNet provides dense optical flow predictions for every pixel in the image, offering more comprehensive motion information \cite{f14e00b9-3aa1-4ef3-adae-435c51b13f07}.

2. CNN Architecture: FlowNet employs an encoder-decoder architecture consisting of:
   - A contraction part that extracts feature representations from input image pairs.
   - An expansion part that predicts local deformation vectors and recovers spatial resolution \cite{f14e00b9-3aa1-4ef3-adae-435c51b13f07}.

3. Robustness: Due to the strong feature extraction and representation capabilities of CNNs, FlowNet can recover optical flow from real-world videos effectively, even when trained on synthetic datasets \cite{f14e00b9-3aa1-4ef3-adae-435c51b13f07}.

4. Performance: Studies have shown that FlowNet-based approaches can achieve improvements over traditional optical flow methods in terms of Pearson's correlation coefficient and root mean square error for respiration rate estimation \cite{f14e00b9-3aa1-4ef3-adae-435c51b13f07}.

The FlowNet approach demonstrates promising results in respiration extraction, particularly in scenarios where traditional methods might struggle, such as low-texture regions or varying lighting conditions.

Both the Lucas-Kanade and FlowNet methods represent significant advancements in contactless respiration extraction. While Lucas-Kanade offers a well-established approach with lower computational requirements, FlowNet provides more robust and comprehensive motion estimation at the cost of increased computational complexity. The choice between these methods often depends on the specific application requirements, available computational resources, and the need for accuracy in challenging scenarios.''';

class ThreadView extends StatefulWidget {
  const ThreadView({
    super.key,
    required this.thread,
  });

  final ThreadState thread;

  @override
  State<StatefulWidget> createState() => _ThreadViewState();
}

class _ThreadViewState extends State<ThreadView> {
  ThreadState get thread => widget.thread;

  @override
  Widget build(BuildContext context) {
    if (thread.deleted) {
      return const SizedBox();
    }

    final colors = Theme.of(context).colorScheme;

    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.titleMedium?.copyWith(
      fontWeight: FontWeight.bold,
    );

    final children = <Widget>[];

    if (widget.thread.hasData) {
      final thread = widget.thread.thread;
      final messages = thread?.messages ?? [];

      for (var idx = 0; idx < messages.length; idx++) {
        final message = messages[idx];

        children.add(
          _ChatFragment(
            titleStyle: titleStyle,
            message: message,
            onDelete: () => ConfirmDialog.show(
              context,
              title: (idx == 0) ? 'Delete Thread?' : 'Delete Message?',
              content: (idx == 0)
                  ? 'Are you sure you want to delete this entire thread?'
                  : 'Are you sure you want to delete this message?',
              onConfirm: () {
                if (idx == 0) {
                  widget.thread.deleteThread();
                } else {
                  widget.thread.deleteMessageFromThread(idx);
                }
              },
            ),
          ),
        );
      }
    }

    if (thread.hasError) {
      final err = Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            'Error',
            style: titleStyle?.copyWith(
              color: colors.error,
            ),
          ),
          subtitle: SelectableText(ErrorUtils.toText(thread.error)),
        ),
      );
      children.add(err);
    }

    if (widget.thread.isLoading && !widget.thread.hasError) {
      final loading = Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            widget.thread.pendingPrompt!,
            style: titleStyle,
          ),
          subtitle: const GeneratingText(),
        ),
      );
      children.add(loading);
    }

    if (!widget.thread.isLoading) {
      children.addAll([
        const SizedBox(height: 16),
        const Divider(height: 1),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 4,
          ),
          child: PromptInput(
            style: textTheme.titleMedium?.copyWith(
              color: colors.outline,
              fontWeight: FontWeight.normal,
            ),
            // prefixIcon: const Icon(Icons.reply_outlined),
            hintText: 'Type a follow-up question or prompt...',
            onPromptSubmit: (text) {
              widget.thread.postMessage(text);
            },
          ),
        ),
      ]);
    }

    return ThreadContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class _ChatFragment extends StatelessWidget {
  const _ChatFragment({
    required this.message,
    this.titleStyle,
    this.onDelete,
  });

  final TextStyle? titleStyle;
  final Message message;
  final VoidCallback? onDelete;

  void _showSources(BuildContext context, List<Source> sources) {
    showDialog(
      context: context,
      builder: (context) => SourcesDialog(
        sources: sources,
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String completion) {
    Clipboard.setData(
      ClipboardData(text: completion),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Copied to clipboard'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    const titlePadding = EdgeInsets.only(
      top: 16,
      left: 24,
      right: 24,
    );

    const bodyPadding = EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 8,
    );

    const buttonPadding = EdgeInsets.all(16);

    final documentNames = HashMap<String, String>();
    final fragments = HashMap<String, Source_Fragment>();
    for (var source in message.sources) {
      for (var fragment in source.fragments) {
        documentNames[fragment.id] = source.name;
        fragments[fragment.id] = fragment;
      }
    }

    String completion = message.completion;
    // Find all \cite{...} with regex
    final matches = RegExp(r'\\cite\{([^\}]+)\}').allMatches(completion);
    for (final match in matches) {
      final block = match.group(0);
      final cite = match.group(1);

      if (block == null || cite == null) {
        continue;
      }

      print('Cite: block=$block cite=$cite');

      final parts = cite.split(',');
      final hrefs = <String>[];

      for (final part in parts) {
        final id = part.trim();
        final fragment = fragments[id];
        if (fragment == null) {
          continue;
        }

        final name = documentNames[id] ?? 'Unknown';
        final href = '[$name p.${fragment.position + 1}](${fragment.id})';
        hrefs.add(href);
      }

      final replacement = hrefs.join(', ');
      completion = completion.replaceFirst(block, replacement);
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: titlePadding,
                child: SelectableText(
                  message.prompt,
                  style: titleStyle,
                ),
              ),
              Padding(
                padding: bodyPadding,
                child: StyledMarkdown(
                  data: completion,
                  onTapLink: (String text, String? href, String title) {
                    print('Link: text=$text href=$href title=$title');
                    if (fragments.containsKey(href)) {
                      showChunkDetails(context, fragments[href]!);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (message.sources.isNotEmpty)
                IconButton(
                  tooltip: 'References',
                  icon: const Icon(Icons.attach_file_outlined),
                  onPressed: () => _showSources(context, message.sources),
                  color: colors.outline,
                ),
              IconButton(
                tooltip: 'Copy',
                icon: const Icon(Icons.copy_outlined),
                onPressed: () => _copyToClipboard(context, completion),
                color: colors.outline,
              ),
              IconButton(
                tooltip: 'Delete',
                icon: const Icon(Icons.delete_outline),
                onPressed: onDelete,
                color: colors.outline,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
