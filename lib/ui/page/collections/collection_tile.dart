import 'dart:math';

import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:flutter/material.dart';

class CollectionsTile extends StatelessWidget {
  const CollectionsTile({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final rand = Random(collection.id.hashCode);
    final colorScheme = ColorScheme.fromSeed(
      seedColor: Color(rand.nextInt(0xFFFFFFFF) | 0xFF000000),
      brightness: Theme.of(context).brightness,
    );

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
          backgroundColor: colorScheme.primary.withOpacity(0.2),
          foregroundColor: colorScheme.primary,
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
              style: text.titleSmall?.merge(TextStyle(
                color: colorScheme.primary,
              )),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                CollectionPage.open(context, collection);
              },
              style: TextButton.styleFrom(
                // backgroundColor: color.surfaceVariant,
                foregroundColor: colorScheme.onSurface,
              ),
              child: Text('${collection.documents} Documents'),
            ),
          ],
        ),
        onTap: () {
          // CollectionPage.open(context, collection);
        },
        shape: shape,
        trailing: PopupMenuButton(
          itemBuilder: (context) => const [
            PopupMenuItem(
              child: Text('Edit'),
            ),
            PopupMenuItem(
              child: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
