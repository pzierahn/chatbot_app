import 'package:braingain_app/ui/page/home_v2/chat.dart';
import 'package:braingain_app/ui/page/home_v2/documents.dart';
import 'package:braingain_app/ui/page/home_v2/options.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Braingain",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        children: [
          const SizedBox(
            width: 300,
            // padding: const EdgeInsets.all(16),
            // color: color.surfaceVariant,
            child: Documents(),
          ),
          const VerticalDivider(width: 0),
          Expanded(
            child: Chat(),
          ),
          const VerticalDivider(width: 0),
          Container(
            width: 300,
            padding: const EdgeInsets.all(16),
            // color: color.surfaceVariant,
            child: const Options(),
          ),
        ],
      ),
    );
  }
}
