import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  static Future<void> open(
      BuildContext context, Collections_Collection col) async {
    await Navigator.of(context).push(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collection.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.upload),
            onPressed: () {
              UploadPage.open(context, widget.collection);
            },
          ),
        ],
      ),
      body: FutureBuilder<Documents>(
        future: braingain.getDocuments(
          DocumentQuery()..collection = widget.collection.id,
        ),
        builder: (context, snap) {
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ConstrainedListView(
              children: snap.data!.items
                  .map(
                    (doc) => ListTile(
                      leading: const Icon(Icons.description_outlined),
                      title: Text(doc.filename),
                      subtitle: Text('Pages ${doc.pages}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () async {
                          final ref = StorageRef()
                            ..collection = widget.collection.id
                            ..id = doc.id;

                          await braingain.deleteDocument(ref);
                          setState(() {});
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
