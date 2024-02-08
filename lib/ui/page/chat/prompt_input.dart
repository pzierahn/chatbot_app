import 'package:braingain_app/utils/breakpoint_m3.dart';
import 'package:flutter/material.dart';

class PromptInput extends StatefulWidget {
  const PromptInput({
    super.key,
    this.prompt,
    this.onPromptSubmit,
    this.style,
    this.hintText,
    this.prefixIcon,
  });

  final String? prompt;
  final ValueChanged<String>? onPromptSubmit;
  final TextStyle? style;
  final String? hintText;
  final Widget? prefixIcon;

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
    final breakpoint = Breakpoint.fromMediaQuery(context);

    final textStyle = widget.style ??
        text.titleMedium?.merge(TextStyle(
          fontWeight: FontWeight.w500,
          color: onPromptSubmit != null ? color.onSurface : color.outline,
        ));

    Widget suffix;
    if (breakpoint.window > WindowClass.compact) {
      suffix = Row(
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
      );
    } else {
      suffix = Icon(
        Icons.keyboard_return,
        size: text.bodySmall?.fontSize,
        color: color.outline,
      );
    }

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
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText ?? 'Type a question or prompt...',
          hintStyle: textStyle,
          suffix: suffix,
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
