import 'package:braingain_app/generated/collection_service.pb.dart';
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
      future: collections.list(Empty()),
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

        final items = snap.data!.items;

        final children = <Widget>[
          UnDraw(
            width: 200,
            illustration: UnDrawIllustration.begin_chat,
            color: color.primary,
          ),
        ];

        for (var collection in items) {
          children.add(CollectionsTile(
            collection: collection,
            onUpdate: () => setState(() {}),
          ));
        }

        children.add(Padding(
          padding: const EdgeInsets.all(8),
          child: ListTile(
            leading: Icon(
              Icons.add,
              size: 20,
              color: color.primary,
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

              collections
                  .create(Collection()..name = name)
                  .then((_) => setState(() {}))
                  .catchError((error) => ErrorSnackBar.show(context, error));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: color.outlineVariant,
                width: 1,
              ),
            ),
            hoverColor: color.primaryContainer,
          ),
        ));

        return ConstrainedListView(
          children: children,
        );
      },
    );
  }
}
