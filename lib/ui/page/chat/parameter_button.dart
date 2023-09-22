import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/chat/parameter_dialog.dart';
import 'package:braingain_app/utils/breakpoint_m3.dart';
import 'package:flutter/material.dart';

class ParameterButton extends StatelessWidget {
  const ParameterButton({
    super.key,
    required this.options,
    this.onChanged,
  });

  final PromptOptions options;
  final ValueChanged<PromptOptions>? onChanged;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final breakpoint = Breakpoint.fromMediaQuery(context);

    final onPressed = onChanged != null
        ? () async {
            final opts = await ParameterDialog.show(context, options);
            if (opts != null) {
              onChanged?.call(opts);
            }
          }
        : null;

    if (breakpoint.window == WindowClass.compact) {
      return IconButton(
        icon: const Icon(Icons.tune_outlined),
        onPressed: onPressed,
      );
    }

    return ActionChip(
      avatar: const Icon(Icons.tune_outlined, size: 16),
      label: Text(
        'Parameters',
        style: text.bodySmall,
      ),
      onPressed: onPressed,
    );
  }
}
