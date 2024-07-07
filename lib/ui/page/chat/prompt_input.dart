import 'package:braingain_app/utils/breakpoint_m3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

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
  /// Callback to the parent widget when the prompt is submitted.
  ValueChanged<String>? get onPromptSubmit => widget.onPromptSubmit;

  /// Controller for the text field.
  final _controller = TextEditingController();

  /// Form key for text field validation.
  final _formKey = GlobalKey<FormState>();

  // Distinguish between shift-Enter and Enter. If shift is pressed, we want to
  // insert a new line. If not, we want to submit the prompt.
  late final _focusNode = FocusNode(
    onKeyEvent: (FocusNode node, KeyEvent event) {
      final notShiftPressed = HardwareKeyboard.instance.isShiftPressed;
      final enterPressed = event.logicalKey.keyLabel == 'Enter';
      final isDownEvent = event is KeyDownEvent;

      if (!notShiftPressed && enterPressed && isDownEvent) {
        _onPromptSubmit();
        return KeyEventResult.handled;
      }

      return KeyEventResult.ignored;
    },
  );

  /// Submit the prompt if it is valid.
  void _onPromptSubmit() {
    final valid =
        _formKey.currentState!.validate() && _controller.text.isNotEmpty;

    if (valid) {
      onPromptSubmit?.call(_controller.text.trim());
      _controller.clear();
    }
  }

  @override
  void initState() {
    super.initState();

    // Set the initial value of the text field.
    _controller.text = widget.prompt ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final breakpoint = Breakpoint.fromMediaQuery(context);

    final textStyle = widget.style ??
        text.titleMedium?.merge(TextStyle(
          fontWeight: FontWeight.bold,
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

    TextInputType? keyboardType = TextInputType.text;
    FocusNode? focusNode;

    if (kIsWeb) {
      //
      // If the platform is web, we need to use the multiline keyboard to allow
      // the user to submit the prompt by pressing the enter key.
      //

      keyboardType = TextInputType.multiline;
      focusNode = _focusNode;
    }

    return Form(
      key: _formKey,
      child: TextFormField(
        controller: _controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        enabled: onPromptSubmit != null,
        maxLines: null,
        style: textStyle,
        validator: (value) {
          value = value?.trim();
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText ?? 'Type a question or prompt...',
          hintStyle: textStyle,
          suffix: suffix,
          border: InputBorder.none,
        ),
        onFieldSubmitted:
            onPromptSubmit != null ? (_) => _onPromptSubmit() : null,
      ),
    );
  }
}
