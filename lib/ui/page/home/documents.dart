import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:flutter/material.dart';

class SelectDocuments extends StatefulWidget {
  const SelectDocuments({
    super.key,
  });

  @override
  State<SelectDocuments> createState() => _SelectDocumentsState();
}

class _SelectDocumentsState extends State<SelectDocuments> {
  final _selected = <String>{};

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return FutureBuilder<Documents>(
      future: braingain.listDocuments(Empty()),
      builder: (context, snap) {
        if (!snap.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Column(
          children: snap.data!.items
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
      },
    );
  }
}

Future<Object?> showDocumentSelectors(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
        content: const SizedBox(
          height: 300,
          child: SingleChildScrollView(
            child: SelectDocuments(),
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
    },
  );
}
