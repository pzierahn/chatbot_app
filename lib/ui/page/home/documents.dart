import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:flutter/material.dart';

class SelectDocumentsDialog extends StatefulWidget {
  const SelectDocumentsDialog({
    super.key,
  });

  static Future<Object?> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return const SelectDocumentsDialog();
      },
    );
  }

  @override
  State createState() => _SelectDocumentsDialogState();
}

class _SelectDocumentsDialogState extends State<SelectDocumentsDialog> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final request = DocumentQuery();
    request.query = _query;

    return AlertDialog(
      title: TextField(
        onChanged: (value) {
          setState(() {
            _query = value;
          });
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
        child: SingleChildScrollView(
          child: FutureBuilder<Documents>(
            future: _query.isEmpty
                ? braingain.listDocuments(Empty())
                : braingain.findDocuments(request),
            builder: (context, snap) {
              if (snap.hasError) {
                return const Center(
                  child: Text('Error'),
                );
              }

              if (!snap.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return _DocumentsBody(
                documents: snap.data!,
              );
            },
          ),
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
            Navigator.pop(context);
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
  });

  final Documents documents;

  @override
  State<_DocumentsBody> createState() => _DocumentsBodyState();
}

class _DocumentsBodyState extends State<_DocumentsBody> {
  final _selected = <String>{};

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Column(
      children: widget.documents.items
          .map((doc) => ListTile(
                leading: _selected.contains(doc.id)
                    ? Icon(
                        Icons.check_circle,
                        size: 16,
                        color: color.primary,
                      )
                    : const Icon(Icons.description, size: 16),
                title: Text(
                  doc.filename,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: text.bodySmall?.merge(TextStyle(
                    color: _selected.contains(doc.id)
                        ? color.primary
                        : color.onSurface,
                  )),
                ),
                subtitle: _selected.contains(doc.id)
                    ? TextField(
                        controller:
                            TextEditingController(text: '1-${doc.pages}'),
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Pages',
                        ),
                        style: text.bodySmall?.merge(TextStyle(
                          color: color.outline,
                        )),
                      )
                    : Text(
                        'Pages: ${doc.pages}',
                        style: text.bodySmall?.merge(TextStyle(
                          color: color.outline,
                        )),
                      ),
                onTap: () => setState(() {
                  if (_selected.contains(doc.id)) {
                    _selected.remove(doc.id);
                  } else {
                    _selected.add(doc.id);
                  }
                }),
              ))
          .toList(),
    );
  }
}
