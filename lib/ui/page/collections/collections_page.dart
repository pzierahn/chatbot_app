import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/collections/collection_tile.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
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
          return Center(
            child: Text(
              snap.error.toString(),
              style: text.bodySmall?.merge(TextStyle(
                color: color.error,
              )),
            ),
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
          ));
        }

        return ConstrainedListView(
          children: children,
        );
      },
    );
  }
}
