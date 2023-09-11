import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/home/parameter_dialog.dart';
import 'package:flutter/material.dart';

class ParameterButton extends StatelessWidget {
  const ParameterButton({
    super.key,
    this.options,
    this.onChanged,
  });

  final PromptOptions? options;
  final ValueChanged<PromptOptions>? onChanged;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return ActionChip(
      avatar: const Icon(Icons.tune_outlined, size: 16),
      label: Text(
        'Parameters',
        style: text.bodySmall,
      ),
      onPressed: onChanged != null
          ? () async {
              final opts = await ParameterDialog.show(context);
              if (opts != null) {
                onChanged?.call(opts);
              }
            }
          : null,
    );
  }
}
