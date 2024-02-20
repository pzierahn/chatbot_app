import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/generated/document_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class DocumentSelection {
  final Map<String, String> names = {};

  bool contains(String docId) => names.containsKey(docId);

  bool isEmpty() => names.isEmpty;

  void remove(String docId) {
    names.remove(docId);
    names.remove(docId);
  }

  void add(String docId, String name) {
    names[docId] = name;
  }

  List<String> getNames() {
    return names.values.toList();
  }

  List<String> getDocuments() {
    return names.keys.toList();
  }
}

class SelectDocsDialog extends StatefulWidget {
  const SelectDocsDialog({
    super.key,
    this.preSelected,
    required this.collection,
  });

  final DocumentSelection? preSelected;
  final Collection collection;

  static Future<DocumentSelection?> show({
    required BuildContext context,
    required Collection collection,
    DocumentSelection? documents,
  }) {
    return showDialog<DocumentSelection?>(
      context: context,
      builder: (context) {
        return SelectDocsDialog(
          preSelected: documents ?? DocumentSelection(),
          collection: collection,
        );
      },
    );
  }

  @override
  State createState() => _SelectDocsDialogState();
}

class _SelectDocsDialogState extends State<SelectDocsDialog> {
  String _query = '';

  DocumentSelection _selectedDocs = DocumentSelection();

  @override
  void initState() {
    super.initState();

    if (widget.preSelected != null) {
      _selectedDocs = widget.preSelected!;
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = DocumentFilter()
      ..query = _query
      ..collectionId = widget.collection.id;

    return AlertDialog(
      title: TextField(
        onChanged: (value) {
          setState(() => _query = value);
        },
        decoration: const InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        ),
      ),
      content: SizedBox(
        height: 400,
        width: 400,
        child: FutureBuilder<DocumentList>(
          future: documents.list(request),
          builder: (context, snap) {
            if (snap.hasError) {
              return Center(
                child: Text('Error: ${snap.error}'),
              );
            }

            if (!snap.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return _DocumentsBody(
              documents: snap.data!,
              selected: _selectedDocs,
              collection: widget.collection,
              onChanged: (value) {
                setState(() {
                  _selectedDocs = value;
                });
              },
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, _selectedDocs);
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

class _DocumentsBody extends StatefulWidget {
  const _DocumentsBody({
    required this.documents,
    required this.selected,
    required this.onChanged,
    required this.collection,
  });

  final DocumentList documents;
  final DocumentSelection selected;
  final ValueChanged<DocumentSelection> onChanged;
  final Collection collection;

  @override
  State<_DocumentsBody> createState() => _DocumentsBodyState();
}

class _DocumentsBodyState extends State<_DocumentsBody> {
  void _onSelect(String docId, String filename) {
    if (widget.selected.contains(docId)) {
      widget.selected.remove(docId);
    } else {
      widget.selected.add(docId, filename);
    }

    widget.onChanged(widget.selected);
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    if (widget.documents.items.isEmpty) {
      return Center(
        child: TextIllustration(
            illustration: UnDrawIllustration.empty,
            color: color.primary,
            text: 'No documents in collections',
            action: FilledButton.icon(
              onPressed: () {
                Navigator.pop(context);
                UploadPage.open(context, widget.collection);
              },
              label: const Text('Upload'),
              icon: const Icon(Icons.upload_file),
            )),
      );
    }

    final docIds = widget.documents.items.entries.toList();
    docIds.sort((a, b) => a.value.compareTo(b.value));

    return ListView.builder(
      itemCount: docIds.length,
      itemBuilder: (context, index) {
        final doc = docIds[index];
        final docId = doc.key;
        final filename = doc.value;

        return ListTile(
          leading: widget.selected.contains(docId)
              ? Icon(
                  Icons.task_outlined,
                  size: 16,
                  color: color.primary,
                )
              : const Icon(Icons.description_outlined, size: 16),
          title: Text(
            filename,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: text.bodyMedium?.merge(TextStyle(
              color: widget.selected.contains(docId)
                  ? color.primary
                  : color.onSurface,
            )),
          ),
          subtitle: Text(docId),
          onTap: () => _onSelect(docId, filename),
        );
      },
    );
  }
}
