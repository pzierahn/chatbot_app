import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/page/chat/chat_body.dart';
import 'package:braingain_app/ui/page/chat/chat_field.dart';
import 'package:flutter/material.dart';

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

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static Future<Object?> open(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatPage()),
    );
  }

  @override
  State createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _requests = <Future<ChatCompletion>>[];

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    final testCompletion = ChatCompletion();
    testCompletion.prompt = _prompt;
    testCompletion.completion = _response;

    final source = Source();
    source.id = "c971744f-714e-4d28-91cc-09345628fc8e";
    testCompletion.sources.addAll([source]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, inx) => FutureBuilder<ChatCompletion>(
                future: _requests[inx],
                builder: (context, snap) {
                  if (snap.hasError) {
                    return Text("Error: ${snap.error}");
                  }

                  if (!snap.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return ChatBody(completion: snap.data!);
                },
              ),
              itemCount: _requests.length,
            ),
          ),
          ChatField(
            onSubmitted: (text) {
              final prompt = Prompt();
              prompt.prompt = text;

              setState(() {
                _requests.add(braingain.chat(prompt));
              });
            },
          ),
        ],
      ),
    );
  }
}
