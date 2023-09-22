import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/ui/page/upload/upload_body.dart';
import 'package:braingain_app/ui/widget/simple_scaffold.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  static const route = 'upload';

  static Future<Object?> open(
    BuildContext context,
    Collections_Collection collection,
  ) =>
      Navigator.of(context).pushNamed(route, arguments: collection);

  @override
  Widget build(BuildContext context) {
    final collection =
        ModalRoute.of(context)?.settings.arguments as Collections_Collection?;

    if (collection == null) {
      return const ErrorScaffold(
        title: 'Chat History',
        error: 'No collection found',
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload'),
      ),
      body: UploadBody(collection: collection),
    );
  }
}
