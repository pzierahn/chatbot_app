import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:braingain_app/ui/page/chat/chat_page.dart';
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
        title: Row(
          children: [
            Text(
              collection.name,
              style: text.titleSmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                CollectionPage.open(context, collection);
              },
              style: TextButton.styleFrom(
                foregroundColor: color.onSurface,
              ),
              child: Text('${collection.documents} Documents'),
            ),
          ],
        ),
        onTap: () {
          ChatPage.open(context, collection);
        },
        shape: shape,
        trailing: PopupMenuButton(
          onSelected: (item) async {
            if (item == 1) {
              ConfirmDialog.show(
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

              // TODO: Delete collection
              // await braingain.deleteCollection(collection);
              onUpdate?.call();
              return;
            }

            final name = await EditCollectionDialog.show(
              context,
              collection.name,
            );
            if (name == null) {
              return;
            }

            await braingain
                .updateCollection(
                  Collection()
                    ..id = collection.id
                    ..name = name,
                )
                .catchError((error) => ErrorSnackBar.show(context, error));

            onUpdate?.call();
          },
          itemBuilder: (context) => const <PopupMenuEntry<int>>[
            PopupMenuItem<int>(
              value: 0,
              child: Text('Edit'),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
