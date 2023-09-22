import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/upload/upload_body.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  static Future<void> open(
    BuildContext context,
    Collections_Collection collection,
  ) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => UploadPage(
          collection: collection,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload'),
      ),
      body: UploadBody(collection: collection),
    );
  }
}
