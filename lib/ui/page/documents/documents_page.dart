import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/generated/document_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/index_button.dart';
import 'package:braingain_app/ui/page/documents/document_edit_dialog.dart';
import 'package:braingain_app/ui/page/index/index_dialog.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/ui/widget/simple_scaffold.dart';
import 'package:braingain_app/utils/document.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class DocumentsPage extends StatelessWidget {
  const DocumentsPage({super.key});

  static const route = 'documents';

  static Future<Object?> open(
    BuildContext context,
    Collection collection,
  ) =>
      Navigator.of(context).pushNamed(route, arguments: collection);

  @override
  Widget build(BuildContext context) {
    final collection =
        ModalRoute.of(context)?.settings.arguments as Collection?;

    if (collection == null) {
      return const ErrorScaffold(
        title: 'Collection',
        error: 'No collection found',
      );
    }

    return _CollectionPage(
      collection: collection,
    );
  }
}

class _CollectionPage extends StatefulWidget {
  const _CollectionPage({
    required this.collection,
  });

  final Collection collection;

  @override
  State createState() => _CollectionPageState();
}

class _CollectionPageState extends State<_CollectionPage> {
  static const _menuActions = [
    PopupMenuItem(
      value: 'edit',
      child: Text('Edit'),
    ),
    PopupMenuItem(
      value: 'delete',
      child: Text('Delete'),
    ),
  ];

  Future<void> _onEditDocument(String docId, DocumentMetadata meta) async {
    final oldTitle = DocumentUtils.getTitle(meta);
    final title = await EditDocumentDialog.show(context, oldTitle);
    if (title == null || title.isEmpty || title == oldTitle) {
      return;
    }

    final rename = RenameDocument()
      ..id = docId
      ..name = title;

    documents.rename(rename).then((_) {
      SimpleSnackBar.show(
        context,
        'Updated $title',
      );
      setState(() {});
    }).catchError((error) {
      ErrorSnackBar.show(context, error);
    });
  }

  Future<void> _onDelete(String docId, DocumentMetadata meta) async {
    final delete = await ConfirmDialog.show(
      context,
      title: 'Delete ${DocumentUtils.getTitle(meta)}?',
      content: 'This action cannot be undone',
    );
    if (delete == null || !delete) {
      return;
    }

    final ref = DocumentID()..id = docId;
    documents.delete(ref).then((_) {
      SimpleSnackBar.show(
        context,
        'Deleted ${DocumentUtils.getTitle(meta)}',
      );
      setState(() {});
    }).catchError((error) {
      ErrorSnackBar.show(context, error);
    });
  }

  void _onAction(String action, String docId, DocumentMetadata meta) {
    switch (action) {
      case 'delete':
        _onDelete(docId, meta);
        break;
      case 'edit':
        _onEditDocument(docId, meta);
        break;
    }
  }

  List<_Item> _sortDocuments(Map<String, DocumentMetadata> data) {
    final list = data.entries
        .map((entry) => _Item(
              documentId: entry.key,
              meta: entry.value,
            ))
        .toList();

    list.sort((a, b) {
      final aTitle = DocumentUtils.getTitle(a.meta);
      final bTitle = DocumentUtils.getTitle(b.meta);
      return aTitle.compareTo(bTitle);
    });

    return list;
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collection.name),
        actions: [
          IndexButton(collectionId: widget.collection.id),
        ],
      ),
      body: FutureBuilder<DocumentList>(
        future: documents.list(
          DocumentFilter()..collectionId = widget.collection.id,
        ),
        builder: (context, snap) {
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final items = snap.data?.items ?? <String, DocumentMetadata>{};
          if (items.isEmpty) {
            return Center(
              child: TextIllustration(
                illustration: UnDrawIllustration.books,
                text: 'No documents',
                action: FilledButton(
                  onPressed: () {
                    showIndexDialog(context, widget.collection.id);
                  },
                  child: const Text('Add knowledge'),
                ),
              ),
            );
          }

          final children = <Widget>[];

          for (final entry in _sortDocuments(items)) {
            Widget? leading;
            Widget? subtitle;

            if (entry.meta.hasWeb()) {
              leading = const Icon(Icons.public_outlined);
              subtitle = Text(
                entry.meta.web.url,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: color.outline,
                ),
              );
            }

            if (entry.meta.hasFile()) {
              leading = const Icon(Icons.description_outlined);
            }

            final tile = ListTile(
              leading: leading,
              title: Text(
                DocumentUtils.getTitle(entry.meta),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: subtitle,
              trailing: PopupMenuButton(
                itemBuilder: (context) => _menuActions,
                onSelected: (action) => _onAction(
                  action,
                  entry.documentId,
                  entry.meta,
                ),
              ),
            );

            children.add(tile);
          }

          return ConstrainedListView(
            children: children,
          );
        },
      ),
    );
  }
}

class _Item {
  const _Item({
    required this.documentId,
    required this.meta,
  });

  final String documentId;
  final DocumentMetadata meta;
}
