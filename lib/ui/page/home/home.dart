import 'package:braingain_app/ui/page/home/collections_body.dart';
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
        title: const Text(
          'Braingain',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const CollectionsBody(),
    );
  }
}
