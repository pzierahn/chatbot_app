import 'package:braingain_app/service/index.dart';
import 'package:braingain_app/ui/page/index/index_dialog.dart';
import 'package:braingain_app/ui/page/index/index_page.dart';
import 'package:flutter/material.dart';

class IndexButton extends StatefulWidget {
  const IndexButton({
    super.key,
    required this.collectionId,
  });

  final String collectionId;

  @override
  State<IndexButton> createState() => _IndexButtonState();
}

class _IndexButtonState extends State<IndexButton> implements IndexListener {
  List<IndexStatus> _list = [];

  @override
  void initState() {
    super.initState();
    IndexService.addListener(this);
  }

  @override
  void dispose() {
    IndexService.removeListener(this);
    super.dispose();
  }

  @override
  void onStatusUpdate(List<IndexStatus> list) {
    setState(() {
      _list = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    if (_list.isEmpty) {
      return IconButton(
        icon: const Icon(Icons.post_add_outlined),
        tooltip: 'Add Knowledge',
        onPressed: () {
          showIndexDialog(context, widget.collectionId);
        },
      );
    }

    final hasError = _list.any((element) => element.hasError);
    if (hasError) {
      return IconButton(
        icon: Icon(
          Icons.error,
          color: color.error,
        ),
        tooltip: 'Index',
        onPressed: () {
          IndexPage.open(context);
        },
      );
    }

    final isLoading =
        _list.any((element) => !element.hasError && !element.success);
    if (isLoading) {
      return Stack(
        alignment: Alignment.center,
        children: [
          const CircularProgressIndicator(),
          IconButton(
            icon: const Icon(Icons.bolt_outlined),
            tooltip: 'View Index Progress',
            onPressed: () {
              IndexPage.open(context);
            },
          ),
        ],
      );
    }

    return IconButton(
      icon: const Icon(Icons.note_add_outlined),
      tooltip: 'Add Knowledge',
      onPressed: () {
        showIndexDialog(context, widget.collectionId);
      },
    );
  }
}
