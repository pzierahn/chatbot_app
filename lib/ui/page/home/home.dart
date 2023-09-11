import 'package:braingain_app/ui/page/home/chat.dart';
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Braingain',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Chat(),
    );
  }
}
