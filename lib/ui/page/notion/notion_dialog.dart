import 'package:braingain_app/ui/page/notion/notion_page.dart';
import 'package:flutter/material.dart';

class StartNotionDialog extends StatefulWidget {
  const StartNotionDialog({
    super.key,
    required this.collectionID,
  });

  final String collectionID;

  static void show(BuildContext context, String collectionID) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StartNotionDialog(collectionID: collectionID);
      },
    );
  }

  @override
  State createState() => _StartNotionDialogState();
}

class _StartNotionDialogState extends State<StartNotionDialog> {
  String _databaseId = '';

  void _openNotion() {
    Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return NotionPage(
            databaseID: _databaseId,
            collectionID: widget.collectionID,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Connect to Notion Database'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ListTile(
            title: Text(
              '1. Connect Brainboost to Notion',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
                'Navigate to your Database > Style, export and more > Connect to > Search for "Brainboost"'),
          ),
          const ListTile(
              title: Text(
                '2. Copy the Database ID',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle:
                  Text('notion.so/DATABASE-ID?v=your-version-number')),
          ListTile(
            title: TextField(
              decoration: const InputDecoration(
                hintText: 'Enter your DATABASE-ID',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() => _databaseId = value);
              },
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
        FilledButton(
          onPressed: _databaseId.isNotEmpty ? _openNotion : null,
          child: const Text('Connect'),
        ),
      ],
    );
  }
}
