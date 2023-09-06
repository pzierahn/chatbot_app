import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({
    super.key,
  });

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return ListView(
      children: [
        ListTile(
          title: Text(
            _prompt,
            style: text.headlineMedium,
          ),
        ),
        ListTile(
          title: Text(
            _completion,
            style: text.bodyMedium,
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.info_outline),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.copy),
              ),
            ],
          ),
        ),
        ListTile(
          title: Text(
            _prompt,
            style: text.headlineMedium,
          ),
        ),
        ListTile(
          title: Text(
            _completion,
            style: text.bodyMedium,
          ),
        ),
        ListTile(
          title: TextField(
            style: text.headlineMedium,
            decoration: InputDecoration.collapsed(
              hintText: 'Type a message',
              hintStyle: text.headlineMedium,
            ),
          ),
        ),
      ],
    );
  }
}

const _prompt = 'Explain how DAG-Riders Common Coin works';
const _completion = '''
In the context of DAG-Rider, the Common Coin is a mechanism used to achieve consensus among the participating processes. It ensures that all correct processes unanimously agree on a single random bit value, which can be used for various purposes, such as leader election or randomization.

The Common Coin in DAG-Rider is based on the construction and dissemination of a directed acyclic graph (DAG) that represents the votes of the processes. The DAG consists of vertices representing the votes and directed edges representing pairwise "strong" relationships between the votes.

The process starts by each participant independently generating its own random vote, usually a single bit value. Each process then disseminates its vote to all other processes in the system.

Upon receiving a vote from another process, a process examines its own vote, as well as the votes it has already received. It compares its own vote with the received vote and forms a strong edge from the smaller vote to the larger vote in the DAG. This ensures that the ordering of the votes in the DAG reflects the underlying partial order among the votes.

Once a process has formed strong edges between its own vote and all the votes it has received, it can determine the final vote value by selecting the vote that has a strong edge from every other vote. This means that the final vote will be the majority vote among the processes.

If there is a tie in the votes, meaning multiple votes have strong edges from all other votes, DAG-Rider employs a tie-breaking rule to select a single vote as the final vote. This rule is typically based on the process IDs or some other deterministic mechanism to ensure consistent tie-breaking across all correct processes.

The Common Coin construction of DAG-Rider guarantees that all correct processes ultimately agree on the same final vote value, as they continuously update the DAG by considering the received votes and forming strong edges based on the partial order among the votes.

Overall, the Common Coin mechanism in DAG-Rider enables the processes to achieve consensus on a random bit value, providing a foundation for other protocols and algorithms in the system.
''';
