import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/ui/page/upload/upload_body.dart';
import 'package:braingain_app/ui/page/upload/upload_dialog.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/simple_scaffold.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class _UploadArguments {
  const _UploadArguments(this.collection, [this.files]);

  final Collection collection;
  final List<PlatformFile>? files;
}

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  static const route = 'upload';

  static Future<Object?> open(
    BuildContext context,
    Collection collection,
  ) =>
      Navigator.of(context).pushNamed(
        route,
        arguments: _UploadArguments(collection),
      );

  static Future<Object?> openWithDialog(
    BuildContext context,
    Collection collection,
  ) async {
    try {
      final files = await showUploadDialog();
      if (files.isEmpty) {
        return null;
      }

      final args = _UploadArguments(collection, files);
      return Navigator.of(context).pushNamed(route, arguments: args);
    } catch (error) {
      ErrorSnackBar.show(context, error);
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as _UploadArguments?;

    if (args == null) {
      return const ErrorScaffold(
        title: 'Upload',
        error: 'Missing arguments...',
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload'),
      ),
      body: UploadBody(
        collection: args.collection,
        files: args.files,
      ),
    );
  }
}
