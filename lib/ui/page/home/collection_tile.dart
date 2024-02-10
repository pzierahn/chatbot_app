import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/chat_page.dart';
import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:braingain_app/ui/page/home/collection_edit_dialog.dart';
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
        await collections.delete(delete).catchError(
          (error) {
            debugPrint('Error deleting collection: $error');
            ErrorSnackBar.show(context, error);
            return Empty();
          },
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

    collections
        .update(Collection()
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
      borderRadius: BorderRadius.circular(16),
    );

    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: color.outlineVariant,
          width: 1,
        ),
      ),
      child: ListTile(
        leading: Icon(
          Icons.folder_outlined,
          size: 20,
          color: color.primary,
        ),
        title: Text(
          collection.name,
          style: text.titleSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        hoverColor: color.primaryContainer,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        subtitle: Text(
          '${collection.documentCount} Document${collection.documentCount == 1 ? '' : 's'}',
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
            const PopupMenuItem<int>(
              value: 0,
              child: Text('Documents'),
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
