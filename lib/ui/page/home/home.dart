import 'package:braingain_app/service/supabase.dart';
import 'package:braingain_app/ui/page/home/collections_body.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  static const route = '/';

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
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              supabase.auth.signOut();
            },
          ),
        ],
      ),
      body: const CollectionsBody(),
    );
  }
}
