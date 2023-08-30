import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const _prompt =
    "Discuss the safety and liveness guarantees of token-ring algorithms";
const _response =
    '''Token-ring algorithms provide certain safety and liveness guarantees in distributed systems. 

Safety Guarantee: 
Token-ring algorithms ensure safety by granting exclusive access to a shared resource through the use of a circulating token. Only the process that possesses the token has the permission to access the resource, ensuring that multiple processes do not concurrently access it. This prevents conflicts, race conditions, and data corruption that could occur if multiple processes were allowed simultaneous access. By enforcing a strict order of access, token-ring algorithms provide safety and prevent any violations of the intended behavior of the system.

Liveness Guarantee:
While token-ring algorithms provide safety, they may not guarantee liveness in all scenarios. Liveness refers to the property that "eventually something good happens." In the context of token-ring algorithms, liveness typically refers to ensuring that all processes in the system have the opportunity to access the shared resource. 

However, token-ring algorithms may face certain challenges that could affect liveness. If a process that possesses the token crashes or fails to pass it along, other processes may be unable to access the shared resource indefinitely. This can lead to a situation called "starvation" or "deadlock," where some processes are unable to make progress. Additionally, if the token is lost or dropped in the system, it may need to be regenerated or a leader election mechanism may need to be implemented to maintain liveness.

To address these challenges and ensure liveness, token-ring algorithms may require additional mechanisms. For example, a leader election protocol can be used to select a new process as the token holder in the event of a failure or loss. Periodic checks and regeneration of the token can also prevent indefinite unavailability of the shared resource. By incorporating such mechanisms, token-ring algorithms can provide liveness guarantees and ensure that all processes have the opportunity to access the shared resource.''';

const _sources = [
  "DeSys_05_Mutual_Exclusion.pdf",
// "DeSys_07_Current_Research_Consensus_and_Variants.pdf",
// "DeSys_11_Payment_Channel_Networks.pdf",
];

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return ListView(
      children: [
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color.primaryContainer,
            ),
            constraints: const BoxConstraints(
              maxWidth: 600,
            ),
            child: Text(
              _prompt,
              style: text.titleMedium,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: color.outline,
                width: 0.5,
              ),
              // color: color.surfaceVariant,
            ),
            constraints: const BoxConstraints(
              maxWidth: 600,
            ),
            child: Column(
              children: [
                MarkdownBody(
                  data: _response,
                  styleSheet: MarkdownStyleSheet(
                    p: TextStyle(
                      color: color.onSurfaceVariant,
                    ),
                  ),
                  selectable: true,
                ),
                const Divider(height: 32),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.start,
                    children: _sources
                        .map(
                          (source) => ActionChip(
                            label: Text(source),
                            labelStyle: text.bodySmall,
                            tooltip: "Pages: 1, 3, 4, 5, 6",
                            onPressed: () {},
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
