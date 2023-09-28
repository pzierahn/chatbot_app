import 'package:braingain_app/generated/collections.pb.dart';
import 'package:flutter/material.dart';

class PromptInput extends StatefulWidget {
  const PromptInput({
    super.key,
    this.prompt,
    this.onPromptSubmit,
    required this.collection,
  });

  final String? prompt;
  final ValueChanged<String>? onPromptSubmit;
  final Collections_Collection collection;

  @override
  State createState() => _PromptInputState();
}

class _PromptInputState extends State<PromptInput> {
  ValueChanged<String>? get onPromptSubmit => widget.onPromptSubmit;

  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.prompt ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final textStyle = text.titleMedium?.merge(TextStyle(
      fontWeight: FontWeight.w500,
      color: onPromptSubmit != null ? color.onSurface : color.outline,
    ));

    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _controller,
        enabled: onPromptSubmit != null,
        maxLines: null,
        style: textStyle,
        minLines: 1,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Type a question or prompt...',
          hintStyle: textStyle,
          suffix: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter to submit',
                style: text.bodySmall?.merge(TextStyle(
                  color: color.outline,
                )),
              ),
              const SizedBox(width: 4),
              Icon(
                Icons.keyboard_return,
                size: text.bodySmall?.fontSize,
                color: color.outline,
              ),
            ],
          ),
          border: InputBorder.none,
        ),
        onFieldSubmitted: onPromptSubmit != null
            ? (value) {
                final valid = _formKey.currentState!.validate() &&
                    _controller.text.isNotEmpty;
                if (valid) {
                  onPromptSubmit?.call(value);
                }
              }
            : null,
      ),
    );
  }
}
