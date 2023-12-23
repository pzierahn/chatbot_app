import 'package:braingain_app/generated/chat.pb.dart';
import 'package:braingain_app/ui/page/chat/sources_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FooterActions extends StatelessWidget {
  const FooterActions({
    super.key,
    required this.message,
    this.onDelete,
  });

  final ChatMessage message;
  final VoidCallback? onDelete;

  void _showSources(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => SourcesDialog(
        references: message.references,
        scores: message.scores,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    const iconSize = 16.0;

    return Row(
      children: [
        TextButton.icon(
          icon: const Icon(Icons.description_outlined, size: iconSize),
          style: TextButton.styleFrom(
            foregroundColor: color.onSurface,
          ),
          label: const Text('Sources'),
          onPressed: () => _showSources(context),
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
        const Spacer(),
        if (onDelete != null)
          TextButton.icon(
            icon: const Icon(Icons.delete_outline, size: iconSize),
            style: TextButton.styleFrom(
              foregroundColor: color.onSurface,
            ),
            label: const Text('Delete'),
            onPressed: onDelete,
          ),
      ],
    );
  }
}
