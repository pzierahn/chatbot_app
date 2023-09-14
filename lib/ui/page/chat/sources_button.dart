import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/sources_dialog.dart';
import 'package:flutter/material.dart';

class SourcesButton extends StatelessWidget {
  const SourcesButton({
    super.key,
    this.documents = const [],
  });

  final List<Completion_Document> documents;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return ActionChip(
      avatar: documents.isEmpty
          ? const Icon(Icons.add, size: 16)
          : const Icon(Icons.description_outlined, size: 16),
      label: Text(
        'Sources',
        style: text.bodySmall,
      ),
      onPressed: () {
        SourcesDialog.show(
          context,
          documents,
        );
      },
    );
  }
}
