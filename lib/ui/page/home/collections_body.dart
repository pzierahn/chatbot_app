import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/home/collection_edit_dialog.dart';
import 'package:braingain_app/ui/page/home/collection_tile.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/error_body.dart';
import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class CollectionsBody extends StatefulWidget {
  const CollectionsBody({
    super.key,
  });

  @override
  State<CollectionsBody> createState() => _CollectionsBodyState();
}

class _CollectionsBodyState extends State<CollectionsBody> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return FutureBuilder<Collections>(
      future: braingain.getCollections(Empty()),
      builder: (context, snap) {
        if (snap.hasError) {
          return ErrorBody(
            error: snap.error,
          );
        }

        if (!snap.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final collections = snap.data!.items;

        final children = <Widget>[
          UnDraw(
            width: 300,
            illustration: UnDrawIllustration.education,
            color: color.primary,
          ),
        ];

        for (var collection in collections) {
          children.add(CollectionsTile(
            collection: collection,
            onUpdate: () => setState(() {}),
          ));
        }

        children.add(Container(
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
                backgroundColor: color.surfaceVariant,
                foregroundColor: color.onSurfaceVariant,
                radius: 16,
                child: const Icon(
                  Icons.add,
                  size: 20,
                ),
              ),
              title: Text(
                'Create Collection',
                style: text.titleSmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () async {
                final name = await EditCollectionDialog.show(context);
                if (name == null) {
                  return;
                }

                braingain
                    .createCollection(Collection()..name = name)
                    .then((_) => setState(() {}))
                    .catchError((error) => ErrorSnackBar.show(context, error));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            )));

        return ConstrainedListView(
          children: children,
        );
      },
    );
  }
}
