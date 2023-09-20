import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:flutter/material.dart';

class EditDocumentDialog extends StatefulWidget {
  const EditDocumentDialog({
    super.key,
    required this.ref,
  });

  final StorageRef ref;

  static Future<String?> show(
    BuildContext context,
    StorageRef ref,
  ) {
    return showDialog<String>(
      context: context,
      builder: (context) => EditDocumentDialog(ref: ref),
    );
  }

  @override
  State<EditDocumentDialog> createState() => _EditDocumentDialogState();
}

class _EditDocumentDialogState extends State<EditDocumentDialog> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.ref.filename;
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
      title: const Text('Edit Filename'),
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
            hintText: 'Filename',
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
          child: const Text('Update'),
        ),
      ],
    );
  }
}
