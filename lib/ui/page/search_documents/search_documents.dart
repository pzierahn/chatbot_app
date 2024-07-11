import 'dart:collection';

import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/generated/document_service.pb.dart';
import 'package:braingain_app/generated/document_service.pbgrpc.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/ui/widget/simple_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class SearchDocumentsPage extends StatelessWidget {
  const SearchDocumentsPage({super.key});

  static const route = 'search-documents';

  static Future<Object?> open(
    BuildContext context,
    Collection collection,
  ) =>
      Navigator.of(context).pushNamed(
        route,
        arguments: collection,
      );

  @override
  Widget build(BuildContext context) {
    final collection =
        ModalRoute.of(context)?.settings.arguments as Collection?;

    if (collection == null) {
      return const ErrorScaffold(
        title: 'Document Search',
        error: 'No collection found',
      );
    }

    return _SearchDocumentsPage(
      collection: collection,
    );
  }
}

class _SearchDocumentsPage extends StatefulWidget {
  const _SearchDocumentsPage({
    required this.collection,
  });

  final Collection collection;

  @override
  State createState() => _SearchDocumentsPageState();
}

class _SearchDocumentsPageState extends State<_SearchDocumentsPage> {
  SearchResults? _results;

  void _search(String text) {
    if (text.isEmpty) {
      setState(() {
        _results = null;
      });
      return;
    }

    final query = SearchQuery()
      ..collectionId = widget.collection.id
      ..limit = 10
      ..text = text;

    documents.search(query).then((value) {
      setState(() => _results = value);
    }).catchError((error) {
      ErrorSnackBar.show(context, error);
    });
  }

  double _getScore(String id) {
    if (_results == null) {
      return 0.0;
    }

    return _results!.scores.containsKey(id) ? _results!.scores[id]! : 0.0;
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final children = <Widget>[
      SearchBar(
        leading: Container(
          width: 48,
          alignment: Alignment.center,
          child: Icon(
            Icons.search,
            color: color.primary,
          ),
        ),
        hintText: 'Search documents',
        onChanged: _search,
      ),
    ];

    if (_results == null) {
      children.add(Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 64),
        child: const TextIllustration(
          illustration: UnDrawIllustration.search_engines,
          text: 'No documents found',
        ),
      ));
    } else {
      final docsNames = HashMap<String, String>();
      final chunks = <Chunk>[];

      for (final chunk in _results!.chunks) {
        docsNames[chunk.id] = _results!.documentNames[chunk.documentId] ?? '';
        chunks.add(chunk);
      }

      chunks.sort((a, b) => _getScore(b.id).compareTo(_getScore(a.id)));

      for (var chunk in chunks) {
        final score = _results!.scores.containsKey(chunk.id)
            ? (_results!.scores[chunk.id] ?? 0.0)
            : 0.0;

        final title = '${docsNames[chunk.id]} '
            'p.${chunk.postion + 1} ';

        children.add(
          ExpansionTile(
            title: Text(title),
            leading: Text('(${(score * 100).toStringAsFixed(0)}%)'),
            children: [
              SelectableText(
                chunk.text,
                style: textTheme.bodySmall?.copyWith(
                  color: color.outline,
                ),
              ),
            ],
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collection.name),
      ),
      body: ConstrainedListView(
        children: children,
      ),
    );
  }
}
