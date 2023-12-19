import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/generated/collections.pb.dart';
import 'package:braingain_app/generated/documents.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/utils/page_numbers.dart';
import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class DocumentSelection {
  final Map<String, Prompt_Document> documents = {};
  final Map<String, String> names = {};

  bool contains(String docId) => documents.containsKey(docId);

  bool isEmpty() => documents.isEmpty;

  void remove(String docId) {
    documents.remove(docId);
    names.remove(docId);
  }

  void add(Documents_Document doc) {
    documents[doc.id] = Prompt_Document()
      ..id = doc.id
      ..pages.clear()
      ..pages.addAll([for (int i = 0; i < doc.pages; i++) i]);
    names[doc.id] = doc.filename;
  }

  List<int> getPages(String docId) {
    return documents[docId]?.pages ?? [];
  }

  void setPages(String docId, List<int> pages) {
    documents[docId]?.pages.clear();
    documents[docId]?.pages.addAll(pages);
  }

  List<String> getNames() {
    return names.values.toList();
  }

  List<Prompt_Document> getDocuments() {
    return documents.values.toList();
  }
}

class SelectDocsDialog extends StatefulWidget {
  const SelectDocsDialog({
    super.key,
    this.preSelected,
    required this.collection,
  });

  final DocumentSelection? preSelected;
  final Collections_Collection collection;

  static Future<DocumentSelection?> show({
    required BuildContext context,
    required Collections_Collection collection,
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
  final _formKey = GlobalKey<FormState>();

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
        child: FutureBuilder<Documents>(
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

            return Form(
              key: _formKey,
              child: _DocumentsBody(
                documents: snap.data!,
                selected: _selectedDocs,
                collection: widget.collection,
                onChanged: (value) {
                  setState(() {
                    _selectedDocs = value;
                  });
                },
              ),
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
            if (_formKey.currentState!.validate()) {
              Navigator.pop(context, _selectedDocs);
            }
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

  final Documents documents;
  final DocumentSelection selected;
  final ValueChanged<DocumentSelection> onChanged;
  final Collections_Collection collection;

  @override
  State<_DocumentsBody> createState() => _DocumentsBodyState();
}

class _DocumentsBodyState extends State<_DocumentsBody> {
  void _onSelect(Documents_Document doc) {
    if (widget.selected.contains(doc.id)) {
      widget.selected.remove(doc.id);
    } else {
      widget.selected.add(doc);
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

    return ListView.builder(
      itemCount: widget.documents.items.length,
      itemBuilder: (context, index) {
        final doc = widget.documents.items[index];
        return ListTile(
          leading: widget.selected.contains(doc.id)
              ? Icon(
                  Icons.task_outlined,
                  size: 16,
                  color: color.primary,
                )
              : const Icon(Icons.description_outlined, size: 16),
          title: Text(
            doc.filename,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: text.bodyMedium?.merge(TextStyle(
              color: widget.selected.contains(doc.id)
                  ? color.primary
                  : color.onSurface,
            )),
          ),
          subtitle: widget.selected.contains(doc.id)
              ? TextFormField(
                  controller: TextEditingController(
                    text: formatPageList(widget.selected.getPages(doc.id)),
                  ),
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Pages',
                  ),
                  style: text.bodySmall?.merge(TextStyle(
                    color: color.outline,
                  )),
                  onFieldSubmitted: (text) {
                    final pages = parsePageList(text);
                    widget.selected.setPages(doc.id, pages);
                    widget.onChanged(widget.selected);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter page numbers';
                    }

                    final reg = RegExp(r'^\d+(-\d+)?,?( *\d+(-\d+)?,?)*$');
                    if (!reg.hasMatch(value)) {
                      return 'Please enter page numbers correctly';
                    }

                    return null;
                  },
                )
              : Text(
                  'Pages: ${doc.pages}',
                  style: text.bodySmall?.merge(TextStyle(
                    color: color.outline,
                  )),
                ),
          onTap: () => _onSelect(doc),
        );
      },
    );
  }
}
