import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/generated/collections.pb.dart';
import 'package:braingain_app/generated/documents.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/utils/page_numbers.dart';
import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class SelectDocsDialog extends StatefulWidget {
  const SelectDocsDialog({
    super.key,
    this.preSelected,
    required this.collection,
  });

  final List<Prompt_Document>? preSelected;
  final Collections_Collection collection;

  static Future<List<Prompt_Document>?> show({
    required BuildContext context,
    required Collections_Collection collection,
    List<Prompt_Document>? documents,
  }) {
    return showDialog<List<Prompt_Document>?>(
      context: context,
      builder: (context) {
        return SelectDocsDialog(
          preSelected: documents ?? <Prompt_Document>[],
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

  Map<String, Prompt_Document> _selectedDocs = <String, Prompt_Document>{};

  @override
  void initState() {
    super.initState();

    if (widget.preSelected != null) {
      _selectedDocs = Map.fromEntries(
        widget.preSelected!.map((doc) => MapEntry(doc.id, doc)),
      );
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
              Navigator.pop(context, _selectedDocs.values.toList());
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
  final Map<String, Prompt_Document> selected;
  final ValueChanged<Map<String, Prompt_Document>> onChanged;
  final Collections_Collection collection;

  @override
  State<_DocumentsBody> createState() => _DocumentsBodyState();
}

class _DocumentsBodyState extends State<_DocumentsBody> {
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
          leading: CircleAvatar(
            backgroundColor: widget.selected.containsKey(doc.id)
                ? color.primary.withOpacity(0.2)
                : color.surfaceVariant,
            foregroundColor: widget.selected.containsKey(doc.id)
                ? color.primary
                : color.onSurfaceVariant,
            radius: 16,
            child: widget.selected.containsKey(doc.id)
                ? const Icon(Icons.check, size: 16)
                : const Icon(Icons.description, size: 16),
          ),
          title: Text(
            doc.filename,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: text.bodySmall?.merge(TextStyle(
              color: widget.selected.containsKey(doc.id)
                  ? color.primary
                  : color.onSurface,
            )),
          ),
          subtitle: widget.selected.containsKey(doc.id)
              ? TextFormField(
                  controller: TextEditingController(
                    text: formatPageList(widget.selected[doc.id]!.pages),
                  ),
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Pages',
                  ),
                  style: text.bodySmall?.merge(TextStyle(
                    color: color.outline,
                  )),
                  onFieldSubmitted: (text) {
                    widget.selected[doc.id]?.pages.clear();
                    widget.selected[doc.id]?.pages.addAll(parsePageList(text));
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
          onTap: () {
            if (widget.selected.containsKey(doc.id)) {
              widget.selected.remove(doc.id);
            } else {
              widget.selected[doc.id] = Prompt_Document()
                ..id = doc.id
                ..filename = doc.filename
                ..pages.clear()
                ..pages.addAll([for (int i = 1; i <= doc.pages; i++) i]);
            }

            widget.onChanged(widget.selected);
          },
        );
      },
    );
  }
}
