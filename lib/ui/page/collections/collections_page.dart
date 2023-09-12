import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({
    super.key,
  });

  static Future<void> open(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CollectionsPage(),
      ),
    );
  }

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
      ),
      body: FutureBuilder<Collections>(
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

          return ConstrainedListView(
            children: collections
                .map(
                  (collection) => ListTile(
                      leading: const Icon(Icons.book_outlined),
                      title: Text(
                        collection.name,
                        style: text.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        '${collection.documents} Documents',
                        style: text.bodySmall?.merge(
                          TextStyle(
                            color: color.secondary,
                          ),
                        ),
                      ),
                      onTap: () {
                        CollectionPage.open(context, collection);
                      },
                      trailing: PopupMenuButton(
                        itemBuilder: (context) => const [
                          PopupMenuItem(
                            child: Text('Edit'),
                          ),
                          PopupMenuItem(
                            child: Text('Delete'),
                          ),
                        ],
                      )),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
