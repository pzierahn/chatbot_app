import 'package:braingain_app/main.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:flutter/material.dart';

class AppInformation extends StatelessWidget {
  const AppInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return OutlinedCard(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'App Information',
              style: textTheme.titleLarge?.merge(const TextStyle(
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
          const Divider(height: 2),
          ListTile(
            leading: const Icon(Icons.code_outlined),
            title: Text(
              'App Version',
              style: textTheme.titleSmall,
            ),
            subtitle: SelectableText(
              appVersion,
              style: textTheme.bodySmall?.merge(
                TextStyle(color: color.outline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
