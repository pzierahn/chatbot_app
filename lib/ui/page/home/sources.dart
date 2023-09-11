import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/utils/page_numbers.dart';
import 'package:flutter/material.dart';

class SourcesDialog extends StatefulWidget {
  const SourcesDialog({
    super.key,
    required this.sources,
  });

  final List<Completion_Document> sources;

  static Future<void> show(
    BuildContext context,
    List<Completion_Document> documents,
  ) {
    return showDialog(
      context: context,
      builder: (context) => SourcesDialog(sources: documents),
    );
  }

  @override
  State createState() => _SourcesDialogState();
}

class _SourcesDialogState extends State<SourcesDialog> {
  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return AlertDialog(
      title: const Text('Sources'),
      content: SizedBox(
        height: 400,
        width: 400,
        child: ListView.builder(
          itemCount: widget.sources.length,
          itemBuilder: (context, index) {
            final source = widget.sources[index];

            return ListTile(
              leading: const Icon(
                Icons.description,
                size: 16,
              ),
              title: Text(
                source.filename,
                style: text.bodySmall,
              ),
              subtitle: Text(
                formatPageList(source.pages),
                style: text.bodySmall,
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
          child: const Text('Close'),
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
  });

  final Documents documents;
  final Map<String, List<int>> selected;
  final ValueChanged<Map<String, List<int>>> onChanged;

  @override
  State<_DocumentsBody> createState() => _DocumentsBodyState();
}

class _DocumentsBodyState extends State<_DocumentsBody> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Column(
      children: widget.documents.items
          .map((doc) => ListTile(
                leading: widget.selected.containsKey(doc.id)
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
                    color: widget.selected.containsKey(doc.id)
                        ? color.primary
                        : color.onSurface,
                  )),
                ),
                subtitle: widget.selected.containsKey(doc.id)
                    ? TextFormField(
                        controller: TextEditingController(
                          text: formatPageList(widget.selected[doc.id]!),
                        ),
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Pages',
                        ),
                        style: text.bodySmall?.merge(TextStyle(
                          color: color.outline,
                        )),
                        onFieldSubmitted: (text) {
                          widget.selected[doc.id] = parsePageList(text);
                          widget.onChanged(widget.selected);
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter page numbers';
                          }

                          final reg =
                              RegExp(r'^\d+(-\d+)?,?( *\d+(-\d+)?,?)*$');
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
                    widget.selected[doc.id] = [
                      for (int i = 1; i <= doc.pages; i++) i
                    ];
                  }

                  widget.onChanged(widget.selected);
                },
              ))
          .toList(),
    );
  }
}
