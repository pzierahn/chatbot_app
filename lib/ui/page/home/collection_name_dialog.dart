import 'package:flutter/material.dart';

Future<String?> showCollectionNameDialog(BuildContext context) {
  return showDialog<String>(
    context: context,
    builder: (context) => const _CollectionNameDialog(),
  );
}

class _CollectionNameDialog extends StatefulWidget {
  const _CollectionNameDialog();

  @override
  State<_CollectionNameDialog> createState() => _CollectionNameDialogState();
}

class _CollectionNameDialogState extends State<_CollectionNameDialog> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPressed() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pop(_controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return AlertDialog(
      title: const Text('Create Collection'),
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a name';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: 'Name',
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: color.outlineVariant,
              ),
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: _onPressed,
          child: const Text('Create'),
        ),
      ],
    );
  }
}
