import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/sources_dialog.dart';
import 'package:braingain_app/utils/breakpoint_m3.dart';
import 'package:flutter/material.dart';

class SourcesButton extends StatelessWidget {
  const SourcesButton({
    super.key,
    this.documents = const [],
  });

  final List<ChatMessage_Document> documents;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final breakpoint = Breakpoint.fromMediaQuery(context);

    onPressed() => SourcesDialog.show(
          context,
          documents,
        );

    if (breakpoint.window == WindowClass.compact) {
      return IconButton(
        icon: const Icon(Icons.find_in_page_outlined),
        onPressed: onPressed,
      );
    }

    return ActionChip(
      avatar: const Icon(Icons.find_in_page_outlined, size: 16),
      label: Text(
        'Sources',
        style: text.bodySmall,
      ),
      onPressed: onPressed,
    );
  }
}
