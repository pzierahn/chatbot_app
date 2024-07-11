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

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    Widget body;

    if (_results == null) {
      body = Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 64),
        child: const TextIllustration(
          illustration: UnDrawIllustration.search_engines,
          text: 'No documents found',
        ),
      );
    } else {
      final docsNames = HashMap<String, String>();
      final chunks = <Chunk>[];

      for (final chunk in _results!.chunks) {
        docsNames[chunk.id] = _results!.documentNames[chunk.documentId] ?? '';
        chunks.add(chunk);
      }

      chunks.sort((a, b) => b.score.compareTo(a.score));

      final children = <Widget>[];

      for (var chunk in chunks) {
        final title = '${docsNames[chunk.id]} '
            'p.${chunk.postion + 1} ';

        children.add(
          ExpansionTile(
            title: Text(title),
            leading: Text('(${(chunk.score * 100).toStringAsFixed(0)}%)'),
            expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
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

      body = ConstrainedListView(
        children: children,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: SearchBar(
            elevation: WidgetStateProperty.all(0),
            autoFocus: true,
            leading: Container(
              width: 48,
              alignment: Alignment.center,
              child: Icon(
                Icons.search,
                color: color.primary,
              ),
            ),
            hintText: 'Search for documents in ${widget.collection.name}',
            onChanged: _search,
          ),
        ),
      ),
      body: body,
    );
  }
}
