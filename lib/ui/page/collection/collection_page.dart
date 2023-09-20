import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/collection/document_edit_dialog.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  static Future<Object?> open(
    BuildContext context,
    Collections_Collection col,
  ) async {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CollectionPage(
          collection: col,
        ),
      ),
    );
  }

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  void _onUpload() => UploadPage.open(context, widget.collection);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collection.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.upload),
            onPressed: _onUpload,
          ),
        ],
      ),
      body: FutureBuilder<Documents>(
        future: braingain.filterDocuments(
          DocumentFilter()..collection = widget.collection.id,
        ),
        builder: (context, snap) {
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snap.data!.items.isEmpty) {
            return Center(
              child: TextIllustration(
                width: 300,
                illustration: UnDrawIllustration.empty,
                action: TextButton.icon(
                  onPressed: _onUpload,
                  icon: const Icon(Icons.upload),
                  label: const Text('Upload Document'),
                ),
              ),
            );
          }

          return ConstrainedListView(
              children: snap.data!.items
                  .map(
                    (doc) => ListTile(
                      leading: CircleAvatar(
                        backgroundColor: color.primary.withOpacity(0.2),
                        foregroundColor: color.primary,
                        child: const Icon(Icons.description_outlined),
                      ),
                      title: SelectableText(doc.filename),
                      subtitle: Text(
                        'Pages ${doc.pages}',
                        style: text.bodySmall?.merge(TextStyle(
                          color: color.outline,
                        )),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit_outlined),
                            onPressed: () async {
                              final ref = StorageRef()
                                ..collection = widget.collection.id
                                ..filename = doc.filename
                                ..id = doc.id;

                              final filename =
                                  await EditDocumentDialog.show(context, ref);

                              if (filename == null || filename.isEmpty) {
                                return;
                              }

                              ref.filename = filename;

                              braingain.updateDocument(ref).then((_) {
                                SimpleSnackBar.show(
                                  context,
                                  'Updated ${doc.filename}',
                                );
                                setState(() {});
                              }).catchError((error) {
                                ErrorSnackBar.show(context, error);
                              });
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete_outline),
                            onPressed: () async {
                              final ref = StorageRef()
                                ..collection = widget.collection.id
                                ..id = doc.id;

                              final delete = await ConfirmDialog.show(
                                context,
                                title: 'Delete ${doc.filename}?',
                                content: 'This action cannot be undone.',
                              );

                              if (delete == null || !delete) {
                                return;
                              }

                              braingain.deleteDocument(ref).then((_) {
                                SimpleSnackBar.show(
                                  context,
                                  'Deleted ${doc.filename}',
                                );
                                setState(() {});
                              }).catchError((error) {
                                ErrorSnackBar.show(context, error);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList());
        },
      ),
    );
  }
}
