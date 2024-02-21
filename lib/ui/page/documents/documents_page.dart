import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/generated/document_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/upload/upload_body.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/simple_scaffold.dart';
import 'package:braingain_app/ui/widget/webpage_index_dialog.dart';
import 'package:braingain_app/utils/document.dart';
import 'package:flutter/material.dart';

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
  void _onUpload() {
    UploadPage.openWithDialog(context, widget.collection)
        .then((_) => setState(() {}));
  }

  void _onIndexWebpage() {
    WebpageIndexDialog.show(context).then((page) {
      if (page == null) {
        return;
      }

      final meta = DocumentMetadata()..web = page;

      final request = IndexJob()
        ..collectionId = widget.collection.id
        ..document = meta;

      documents.index(request).then((_) {
        SimpleSnackBar.show(
          context,
          'Indexed ${page.title}',
        );
      }).catchError((error) {
        ErrorSnackBar.show(context, error);
      });
    });
  }

  Future<void> _onEditDocument(String docId, DocumentMetadata meta) async {
    // final ref = Document()
    //   ..collectionId = widget.collection.id
    //   ..filename = doc.filename
    //   ..id = doc.id;
    //
    // final filename = await EditDocumentDialog.show(context, ref);
    // if (filename == null || filename.isEmpty) {
    //   return;
    // }
    //
    // ref.filename = filename;
    //
    // documents.update(ref).then((_) {
    //   SimpleSnackBar.show(
    //     context,
    //     'Updated ${doc.filename}',
    //   );
    //   setState(() {});
    // }).catchError((error) {
    //   ErrorSnackBar.show(context, error);
    // });
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

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collection.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.travel_explore_outlined),
            tooltip: 'Index Web Page',
            onPressed: _onIndexWebpage,
          ),
          IconButton(
            icon: const Icon(Icons.upload_file_outlined),
            tooltip: 'Upload Documents',
            onPressed: _onUpload,
          ),
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

          if (snap.data!.items.isEmpty) {
            return UploadBody(
              collection: widget.collection,
            );
          }

          return ConstrainedListView(
              children: snap.data!.items.entries
                  .map(
                    (entry) => ListTile(
                      leading: Icon(
                        Icons.description_outlined,
                        color: color.primary,
                      ),
                      title: Text(
                        DocumentUtils.getTitle(entry.value),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: PopupMenuButton(
                        itemBuilder: (context) => const [
                          PopupMenuItem(
                            value: 'edit',
                            child: Text('Edit'),
                          ),
                          PopupMenuItem(
                            value: 'delete',
                            child: Text('Delete'),
                          ),
                        ],
                        onSelected: (value) {
                          switch (value) {
                            case 'edit':
                              _onEditDocument(entry.key, entry.value);
                              break;
                            case 'delete':
                              _onDelete(entry.key, entry.value);
                              break;
                          }
                        },
                      ),
                    ),
                  )
                  .toList());
        },
      ),
    );
  }
}
