import 'package:flutter/material.dart';

const _sources = [
  "DeSys_05_Mutual_Exclusion.pdf",
  // "DeSys_07_Current_Research_Consensus_and_Variants.pdf",
  // "DeSys_11_Payment_Channel_Networks.pdf",
];

class ChatField extends StatelessWidget {
  ChatField({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 8),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 8,
              runSpacing: 8,
              children: _sources
                  .map(
                    (source) => Chip(
                      label: Text(
                        source,
                        overflow: TextOverflow.ellipsis,
                      ),
                      labelStyle: TextStyle(
                        color: color.onSecondaryContainer,
                        fontSize: 10,
                      ),
                      onDeleted: () {},
                      deleteIcon: const Icon(Icons.cancel, size: 10),
                      backgroundColor: color.secondaryContainer,
                    ),
                  )
                  .toList(),
              // children: [
              //   Chip(
              //     label: const Text('Source1.pdf'),
              //     labelStyle: TextStyle(
              //       color: color.onSecondaryContainer,
              //     ),
              //     backgroundColor: color.secondaryContainer,
              //   ),
              // ],
            ),
          ),
          TextField(
            cursorWidth: 1.0,
            controller: _textController,
            autocorrect: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: color.primary,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: color.outline,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: 'Write prompt',
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle_outline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
