import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/service/index.dart';
import 'package:braingain_app/ui/page/chat/thread_container.dart';
import 'package:braingain_app/ui/page/index/index_dialog.dart';
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

class _DocumentWarningState extends State<DocumentWarning>
    implements IndexListener {
  List<IndexStatus> _list = [];

  @override
  void dispose() {
    IndexService.removeListener(this);
    super.dispose();
  }

  @override
  void onStatusUpdate(List<IndexStatus> list) {
    setState(() {
      _list = list
          .where((element) => element.collectionId == widget.collection.id)
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    IndexService.addListener(this);
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    if (_list.isEmpty) {
      return ThreadContainer(
        outlineColor: Colors.orange,
        child: ListTile(
          leading: const Icon(
            Icons.warning_amber,
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
            child: const Text('Add Knowledge'),
            onPressed: () {
              showIndexDialog(context, widget.collection.id);
            },
          ),
        ),
      );
    }

    IndexStatus? error;
    bool isSuccess = true;

    for (final status in _list) {
      if (status.error != null) {
        error = status;
        break;
      }

      isSuccess &= status.success;
    }

    if (error != null) {
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
          subtitle: Text(ErrorUtils.toText(error.error)),
        ),
      );
    }

    if (isSuccess) {
      return ThreadContainer(
        outlineColor: Colors.green,
        child: ListTile(
          leading: const Icon(
            Icons.check,
            color: Colors.green,
          ),
          title: Text(
            'Processed documents!',
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
    }

    return ThreadContainer(
      outlineColor: colors.outlineVariant,
      child: ListTile(
        leading: const CircularProgressIndicator(),
        title: Text(
          'Processing documents...',
          style: textTheme.titleMedium,
        ),
        subtitle: Text(
          'Tap to see details',
          style: textTheme.bodySmall,
        ),
        onTap: () {
          IndexPage.open(context);
        },
      ),
    );
  }
}
