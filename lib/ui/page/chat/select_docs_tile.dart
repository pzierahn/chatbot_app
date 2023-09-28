import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/generated/collections.pb.dart';
import 'package:braingain_app/ui/page/chat/select_docs_dialog.dart';
import 'package:flutter/material.dart';

class SelectDocsTile extends StatelessWidget {
  const SelectDocsTile({
    super.key,
    this.documents = const [],
    required this.onChanged,
    required this.collection,
  });

  final List<Prompt_Document> documents;
  final ValueChanged<List<Prompt_Document>> onChanged;
  final Collections_Collection collection;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    String subtitle;

    if (documents.isEmpty) {
      subtitle =
          'If no documents are added, documents from the collection will selected automatically';
    } else {
      subtitle = documents.map((doc) => doc.filename).join(', ');
    }

    return ListTile(
      leading: documents.isEmpty
          ? Icon(
              Icons.description_outlined,
              color: color.onSurface,
            )
          : Icon(
              Icons.task_outlined,
              color: color.onSurface,
            ),
      title: Text(
        'Select Documents',
        style: text.bodyMedium?.merge(TextStyle(
          color: color.onSurface,
        )),
      ),
      subtitle: Text(
        subtitle,
        style: text.bodySmall?.merge(TextStyle(
          color: color.outline,
        )),
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
    );
  }
}
