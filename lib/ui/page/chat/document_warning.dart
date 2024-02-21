import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/ui/page/index/index_page.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';

class DocumentWarning extends StatefulWidget {
  const DocumentWarning({
    super.key,
    required this.collection,
  });

  final Collection collection;

  @override
  State<StatefulWidget> createState() => _DocumentWarningState();
}

class _DocumentWarningState extends State<DocumentWarning> {
  late Future<Collection> _collection;

  @override
  void initState() {
    super.initState();
    _collection = Future(() => widget.collection);
  }

  void _updateCollection() {
    print('DocumentWarning._updateCollection');

    setState(() {
      _collection = collections.get(
        CollectionID()..id = widget.collection.id,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return FutureBuilder<Collection>(
      future: _collection,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return ThreadContainer(
            outlineColor: colors.error,
            child: const ListTile(
              leading: CircularProgressIndicator(),
              title: Text('Loading...'),
            ),
          );
        }

        if (snapshot.hasError) {
          return ThreadContainer(
            outlineColor: colors.error,
            child: ListTile(
              leading: Icon(
                Icons.error,
                color: colors.error,
              ),
              title: Text(
                'Error',
                style: textTheme.titleMedium?.copyWith(
                  color: colors.error,
                ),
              ),
              subtitle: Text(ErrorUtils.toText(snapshot.error)),
              trailing: IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: _updateCollection,
              ),
            ),
          );
        }

        final collection = snapshot.data!;

        if (collection.documentCount == 0) {
          return ThreadContainer(
            outlineColor: Colors.orange,
            child: ListTile(
              leading: const Icon(
                Icons.warning,
                color: Colors.orange,
              ),
              title: Text(
                'Empty Collection',
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.orange,
                ),
              ),
              subtitle: Text(
                'Upload documents to give the bot context to answer questions',
                style: textTheme.bodySmall?.copyWith(
                  color: colors.outline,
                ),
              ),
              trailing: TextButton(
                child: const Text('Upload'),
                onPressed: () {
                  IndexPage.open(context).then((value) {
                    _updateCollection();
                  });
                },
              ),
            ),
          );
        }

        return ThreadContainer(
          outlineColor: Colors.green,
          child: ListTile(
            leading: const Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
            title: Text(
              'You successfully uploaded documents!',
              style: textTheme.titleMedium?.copyWith(
                color: Colors.green,
              ),
            ),
            subtitle: Text(
              'You can know ask questions to the bot!',
              style: textTheme.bodySmall?.copyWith(
                color: colors.outline,
              ),
            ),
          ),
        );
      },
    );
  }
}
