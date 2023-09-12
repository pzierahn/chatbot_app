import 'dart:math';

import 'package:braingain_app/service/storage.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/utils/login.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage(
      {super.key, this.collection = "b452f76d-c1e4-4cdb-979f-08a4521d3372"});

  final String collection;

  static Future<void> open(BuildContext context) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CollectionPage(),
      ),
    );
  }

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  static const _documents = <String>[
    'DeSys_01_Intro',
    'DeSys_02_Overlay_P2P_Sybil',
    'DeSys_03_Fomalization',
    'DeSys_04_Leader_Election',
    'DeSys_05_Mutual_Exclusion',
    'DeSys_06_Byzantine_Reliable_Broadcast',
    'DeSys_07_Consensus_and_Variants_v2',
    'DeSys_07_Current_Research_Consensus_and_Variants',
    'DeSys_08_Consistency',
    'DeSys_09_Decentralized_Messaging_Matrix',
    'DeSys_10_Distributed_Ledgers_Blockchains_Bitcoin',
    'DeSys_11_Payment_Channel_Networks',
    'DeSys_12_Smart_Contract_Platforms_Ethereum',
    'DeSys_13_Decentralized_File_Storage_IPFS',
    'DeSys_14_Sociotechnical_Conclusion',
  ];

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Collection'),
        actions: [
          IconButton(
            onPressed: () {
              signIn();
            },
            icon: const Icon(Icons.login),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              final result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowMultiple: true,
                allowedExtensions: ['pdf'],
                withData: true,
              );

              if (result != null) {
                for (final file in result.files) {
                  debugPrint('file: ${file.name} ${file.bytes?.length}');
                  StorageUtils.upload(file, widget.collection).onError(
                    (error, stackTrace) {
                      debugPrint('error: $error');
                      return null;
                    },
                  );
                }
              }
            },
          ),
        ],
      ),
      body: ConstrainedListView(
          children: _documents
              .map(
                (title) => ListTile(
                  leading: const Icon(Icons.description_outlined),
                  title: Text(
                    title,
                    style: text.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    '${Random().nextInt(100)} Pages',
                    style: text.bodySmall?.merge(
                      TextStyle(
                        color: color.secondary,
                      ),
                    ),
                  ),
                  onTap: () {},
                  trailing: PopupMenuButton(
                    itemBuilder: (context) => const [
                      PopupMenuItem(
                        child: Text('Rename'),
                      ),
                      PopupMenuItem(
                        child: Text('Delete'),
                      ),
                    ],
                  ),
                ),
              )
              .toList()),
    );
  }
}
