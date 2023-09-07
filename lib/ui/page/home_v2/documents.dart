import 'package:flutter/material.dart';

class Documents extends StatefulWidget {
  const Documents({
    super.key,
  });

  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  static const _docs = [
    'DeSys_01_Intro.pdf',
    'DeSys_02_Overlay_P2P_Sybil.pdf',
    'DeSys_03_Fomalization.pdf',
    'DeSys_04_Leader_Election.pdf',
    'DeSys_05_Mutual_Exclusion.pdf',
    'DeSys_06_Byzantine_Reliable_Broadcast.pdf',
    'DeSys_07_Consensus_and_Variants_v2.pdf',
    'DeSys_07_Current_Research_Consensus_and_Variants.pdf',
    'DeSys_08_Consistency.pdf',
    'DeSys_09_Decentralized_Messaging_Matrix.pdf',
    'DeSys_10_Distributed_Ledgers_Blockchains_Bitcoin.pdf',
    'DeSys_11_Payment_Channel_Networks.pdf',
    'DeSys_12_Smart_Contract_Platforms_Ethereum.pdf',
    'DeSys_13_Decentralized_File_Storage_IPFS.pdf',
    'DeSys_14_Sociotechnical_Conclusion.pdf',
  ];

  final _selected = <String>{};

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Column(
      children: [
        const ListTile(
          leading: Icon(Icons.search, size: 16),
          title: TextField(
            decoration: InputDecoration.collapsed(
              hintText: 'Search',
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: _docs
                .map((doc) => ListTile(
                      leading: _selected.contains(doc)
                          ? Icon(
                              Icons.check_circle,
                              size: 16,
                              color: color.primary,
                            )
                          : const Icon(Icons.description, size: 16),
                      title: Text(
                        doc,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: text.bodySmall?.merge(TextStyle(
                          color: _selected.contains(doc)
                              ? color.primary
                              : color.onSurface,
                        )),
                      ),
                      trailing: PopupMenuButton(
                        icon: const Icon(Icons.more_vert, size: 16),
                        itemBuilder: (context) => const [
                          PopupMenuItem(
                            value: 'pages',
                            child: Row(
                              children: [
                                Icon(Icons.find_in_page, size: 16),
                                SizedBox(width: 16),
                                Text('Pages'),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 'download',
                            child: Row(
                              children: [
                                Icon(Icons.file_open, size: 16),
                                SizedBox(width: 16),
                                Text('View'),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 'rename',
                            child: Row(
                              children: [
                                Icon(Icons.edit, size: 16),
                                SizedBox(width: 16),
                                Text('Rename'),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 'delete',
                            child: Row(
                              children: [
                                Icon(Icons.delete, size: 16),
                                SizedBox(width: 16),
                                Text('Delete'),
                              ],
                            ),
                          ),
                        ],
                        onSelected: (value) => print(value),
                      ),
                      onTap: () => setState(() {
                        if (_selected.contains(doc)) {
                          _selected.remove(doc);
                        } else {
                          _selected.add(doc);
                        }
                      }),
                    ))
                .toList(),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.upload_file, size: 16),
          titleTextStyle: text.bodySmall,
          title: const Text('Add document'),
          onTap: () => print('Add document'),
        ),
      ],
    );
  }
}
