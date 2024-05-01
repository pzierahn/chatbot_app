import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/generated/notion.pb.dart';
import 'package:braingain_app/main.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class NotionSection extends StatefulWidget {
  const NotionSection({super.key});

  @override
  State<NotionSection> createState() => _NotionSectionState();
}

class _NotionSectionState extends State<NotionSection> {
  late final Future<NotionApiKey> _future;
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _future = notion.getApiKey(Empty());
  }

  void _onSave() {
    notion
        .setApiKey(NotionApiKey(
      key: _controller.text.trim(),
    ))
        .then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Saved!'),
        ),
      );
    }).catchError((error) {
      ErrorSnackBar.show(context, error);
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    final titleStyle = textTheme.titleSmall;

    final subtitleStyle = textTheme.bodySmall?.copyWith(
      color: color.outline,
    );

    return OutlinedCard(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Notion Integration',
              style: textTheme.titleLarge?.merge(const TextStyle(
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
          const Divider(height: 2),
          ListTile(
            title: Text(
              'To use the Notion integration, you need to generate a Notion API key',
              style: titleStyle,
            ),
            subtitle: SelectableText(
              '1. Go to https://developers.notion.com/\n'
              '2. Sign in with your Notion account\n'
              '3. Click on "My Integrations" in the top right corner\n'
              '4. Click on "New Integration"\n'
              '5. Enter "Brainboost" as the name of the integration\n'
              '6. Click on "Submit"\n'
              '7. Copy the "secret_XXXXXXXXXX" and paste it below',
              style: subtitleStyle,
            ),
          ),
          FutureBuilder<NotionApiKey>(
              future: _future,
              builder: (context, snap) {
                if (snap.hasData) {
                  _controller.text = snap.data!.key;

                  return ListTile(
                    title: TextField(
                      controller: _controller,
                      style: GoogleFonts.robotoMono(
                        color: color.onSurface,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your Notion API Key',
                        // filled: true,
                        prefixIcon: const Icon(Icons.vpn_key),
                        suffix: TextButton(
                          onPressed: _onSave,
                          child: const Text('Save'),
                        ),
                      ),
                    ),
                  );
                } else if (snap.hasError) {
                  return ListTile(
                    title: SelectableText('Error: ${snap.error}',
                        style: titleStyle?.copyWith(
                          color: color.error,
                        )),
                  );
                } else {
                  return ListTile(
                    title: Text('Loading...', style: titleStyle),
                  );
                }
              }),
        ],
      ),
    );
  }
}
