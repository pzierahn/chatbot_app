import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/chat/chat_page.dart';
import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:braingain_app/ui/page/home/collection_edit_dialog.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:flutter/material.dart';

class CollectionsTile extends StatelessWidget {
  const CollectionsTile({
    super.key,
    required this.collection,
    this.onUpdate,
  });

  final Collections_Collection collection;
  final VoidCallback? onUpdate;

  Future<void> _onDeleteCollection(BuildContext context) {
    return ConfirmDialog.show(
      context,
      title: 'Delete collection',
      content: 'Are you sure you want to delete this collection?',
      onConfirm: () async {
        final delete = Collection()
          ..id = collection.id
          ..name = collection.name;
        await braingain.deleteCollection(delete).catchError(
              (error) => ErrorSnackBar.show(context, error),
            );
        onUpdate?.call();
      },
    );
  }

  Future<void> _onEditCollection(BuildContext context) async {
    final name = await EditCollectionDialog.show(
      context,
      collection.name,
    );
    if (name == null) {
      return;
    }

    braingain
        .updateCollection(Collection()
          ..id = collection.id
          ..name = name)
        .then((_) => onUpdate?.call())
        .catchError((error) => ErrorSnackBar.show(context, error));
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    );

    return Container(
      margin: const EdgeInsets.all(8),
      // padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color.surfaceVariant.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: color.outlineVariant,
          width: 1,
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.primary.withOpacity(0.2),
          foregroundColor: color.primary,
          radius: 16,
          child: const Icon(
            Icons.folder_outlined,
            size: 20,
          ),
        ),
        title: Text(
          collection.name,
          style: text.titleSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          '${collection.documents} Document${collection.documents == 1 ? '' : 's'}',
          style: text.bodySmall?.merge(TextStyle(
            color: color.outline,
          )),
        ),
        onTap: () {
          ChatPage.open(context, collection);
        },
        shape: shape,
        trailing: PopupMenuButton(
          onSelected: (item) async {
            if (item == 0) {
              UploadPage.open(context, collection);
              return;
            }

            if (item == 1) {
              CollectionPage.open(context, collection);
              return;
            }

            if (item == 2) {
              _onEditCollection(context);
              return;
            }

            if (item == 3) {
              _onDeleteCollection(context);
              return;
            }
          },
          itemBuilder: (context) => <PopupMenuEntry<int>>[
            if (collection.documents == 0)
              const PopupMenuItem<int>(
                value: 0,
                child: Text('Upload Documents'),
              ),
            if (collection.documents > 0)
              const PopupMenuItem<int>(
                value: 1,
                child: Text('View Documents'),
              ),
            const PopupMenuDivider(),
            const PopupMenuItem<int>(
              value: 2,
              child: Text('Edit'),
            ),
            const PopupMenuItem<int>(
              value: 3,
              child: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
