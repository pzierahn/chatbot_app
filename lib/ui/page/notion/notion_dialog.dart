import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/generated/notion_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
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
  late Future<Databases> _databaseFuture;

  void _openNotion(Databases_Item database) {
    Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return NotionPage(
            title: database.name,
            databaseID: database.id,
            collectionID: widget.collectionID,
          );
        },
      ),
    );
  }

  void _onUpdate() {
    setState(() {
      _databaseFuture = notion.listDatabases(Empty());
    });
  }

  @override
  void initState() {
    super.initState();
    _databaseFuture = notion.listDatabases(Empty());
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.titleMedium?.copyWith(
      fontWeight: FontWeight.bold,
    );

    final subtitleStyle = textTheme.bodyMedium?.copyWith(
      color: color.outline,
    );

    return AlertDialog(
      title: const Text('Connect to Notion Database'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              '1. Create Notion API key (once)',
              style: titleStyle,
            ),
            subtitle: Text(
              'Go to settings > Notion Integrations > Add your Notion API key',
              style: subtitleStyle,
            ),
          ),
          ListTile(
            title: Text(
              '2. Connect Brainboost to Notion',
              style: titleStyle,
            ),
            subtitle: Text(
              'Go to notion.so > Navigate to your Database > Style, export and more > Connect to > Search for "Brainboost"',
              style: subtitleStyle,
            ),
          ),
          ListTile(
            title: Text(
              '3. Select a Database',
              style: titleStyle,
            ),
            trailing: TextButton(
              onPressed: _onUpdate,
              child: const Text('Refresh'),
            ),
          ),
          FutureBuilder<Databases>(
            future: _databaseFuture,
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return const ListTile(
                  title: Text('Loading databases...'),
                  trailing: CircularProgressIndicator(),
                );
              }

              if (snap.hasError) {
                return Text('Error: ${snap.error}');
              }

              final databases = snap.data!.items;
              if (databases.isEmpty) {
                return const Text('No databases found');
              }

              return ListTile(
                title: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  alignment: WrapAlignment.start,
                  children: databases
                      .map(
                        (database) => ActionChip(
                          label: Text(database.name),
                          onPressed: () {
                            _openNotion(database);
                          },
                        ),
                      )
                      .toList(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
