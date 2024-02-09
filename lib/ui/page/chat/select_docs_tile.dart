import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/ui/page/chat/select_docs_dialog.dart';
import 'package:flutter/material.dart';

class SelectDocsTile extends StatelessWidget {
  const SelectDocsTile({
    super.key,
    required this.documents,
    required this.onChanged,
    required this.collection,
  });

  final DocumentSelection documents;
  final ValueChanged<DocumentSelection> onChanged;
  final Collections_Collection collection;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    String subtitle;

    if (documents.isEmpty()) {
      subtitle = 'The best matching documents will be selected automatically';
    } else {
      subtitle = documents.getNames().join(', ');
    }

    return ListTile(
      leading: documents.isEmpty()
          ? Icon(
              Icons.attach_file_outlined,
              color: color.onSurface,
            )
          : Icon(
              Icons.task_outlined,
              color: color.primary,
            ),
      title: Text(
        'Attach Documents',
        style: text.bodyMedium?.merge(TextStyle(
          color: color.onSurface,
        )),
      ),
      subtitle: Text(
        subtitle,
        style: text.bodySmall?.merge(TextStyle(
          color: documents.isEmpty() ? color.outline : color.primary,
        )),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onTap: () async {
        final docs = await SelectDocsDialog.show(
          context: context,
          documents: documents,
          collection: collection,
        );

        if (docs != null) {
          onChanged(docs);
        }
      },
      hoverColor: color.primaryContainer,
    );
  }
}
