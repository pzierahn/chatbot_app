import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/sources_dialog.dart';
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
    final color = Theme.of(context).colorScheme;

    final count = documents.length;
    final name = count == 1 ? 'Source' : 'Sources';

    return ActionChip(
      avatar: CircleAvatar(
        backgroundColor: color.surfaceVariant,
        foregroundColor: color.onSurfaceVariant,
        child: Text(
          count.toString(),
          style: text.bodySmall?.copyWith(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      label: Text(
        name,
        style: text.bodySmall,
      ),
      onPressed: () => SourcesDialog.show(
        context,
        documents,
      ),
    );
  }
}
