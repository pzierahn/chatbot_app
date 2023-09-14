import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/select_docs_dialog.dart';
import 'package:flutter/material.dart';

class SelectDocsButton extends StatelessWidget {
  const SelectDocsButton({
    super.key,
    this.documents = const [],
    this.onChanged,
    required this.collection,
  });

  final List<Prompt_Document> documents;
  final ValueChanged<List<Prompt_Document>>? onChanged;
  final Collections_Collection collection;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return ActionChip(
      avatar: documents.isEmpty
          ? const Icon(Icons.add, size: 16)
          : const Icon(Icons.task_outlined, size: 16),
      label: Text(
        'Documents',
        style: text.bodySmall,
      ),
      onPressed: onChanged != null
          ? () async {
              final docs = await SelectDocsDialog.show(
                context: context,
                documents: documents,
                collection: collection,
              );

              if (docs != null) {
                onChanged?.call(docs);
              }
            }
          : null,
    );
  }
}
