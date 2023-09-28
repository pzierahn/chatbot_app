import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/ui/page/chat/sources_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FooterActions extends StatelessWidget {
  const FooterActions({
    super.key,
    required this.message,
  });

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    const iconSize = 16.0;

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.end,
      children: [
        TextButton.icon(
          icon: const Icon(Icons.description_outlined, size: iconSize),
          style: TextButton.styleFrom(
            foregroundColor: color.onSurface,
          ),
          label: const Text('Sources'),
          onPressed: () => SourcesDialog.show(
            context,
            message.documents,
          ),
        ),
        TextButton.icon(
          icon: const Icon(Icons.copy, size: iconSize),
          style: TextButton.styleFrom(
            foregroundColor: color.onSurface,
          ),
          label: const Text('Copy'),
          onPressed: () {
            Clipboard.setData(
              ClipboardData(text: message.text),
            );

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Copied to clipboard'),
              ),
            );
          },
        ),
      ],
    );
  }
}
