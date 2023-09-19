import 'package:flutter/material.dart';

class EditCollectionDialog extends StatefulWidget {
  const EditCollectionDialog({
    super.key,
    this.name,
  });

  final String? name;

  static Future<String?> show(
    BuildContext context, [
    String? name,
  ]) {
    return showDialog<String>(
      context: context,
      builder: (context) => EditCollectionDialog(name: name),
    );
  }

  @override
  State<EditCollectionDialog> createState() => _EditCollectionDialogState();
}

class _EditCollectionDialogState extends State<EditCollectionDialog> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.name ?? '';
  }

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
      title: Text(
        widget.name == null ? 'Create Collection' : 'Edit Collection',
      ),
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _controller,
          autofocus: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a name';
            }
            return null;
          },
          onFieldSubmitted: (_) => _onPressed(),
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
          child: Text(widget.name == null ? 'Create' : 'Update'),
        ),
      ],
    );
  }
}
