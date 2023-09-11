import 'dart:math';

import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({
    super.key,
  });

  static Future<void> open(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CollectionsPage(),
      ),
    );
  }

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  static const _collections = <String>[
    'Decentralized Systems',
    'Seminar Softwarequalitätssicherung und Softwaretest',
    'IT-Sicherheitsmanagement für vernetzte Systeme',
    'Formale Systeme',
    'SQM',
    'Mensch-Maschine-Interaktion',
  ];

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
      ),
      body: ConstrainedListView(
          children: _collections
              .map(
                (title) => ListTile(
                    leading: const Icon(Icons.book_outlined),
                    title: Text(
                      title,
                      style: text.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      '${Random().nextInt(100)} Documents',
                      style: text.bodySmall?.merge(
                        TextStyle(
                          color: color.secondary,
                        ),
                      ),
                    ),
                    onTap: () {
                      CollectionPage.open(context);
                    },
                    trailing: PopupMenuButton(
                      itemBuilder: (context) => const [
                        PopupMenuItem(
                          child: Text('Edit'),
                        ),
                        PopupMenuItem(
                          child: Text('Delete'),
                        ),
                      ],
                    )),
              )
              .toList()),
    );
  }
}
