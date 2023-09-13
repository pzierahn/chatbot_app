import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class FileUploadProgress extends StatelessWidget {
  const FileUploadProgress({
    super.key,
    required this.ref,
    this.upload,
    this.progress,
  });

  final StorageRef ref;

  final Future<StorageRef>? upload;
  final ResponseStream<IndexProgress>? progress;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    if (upload != null) {
      return FutureBuilder(
        future: upload,
        builder: (context, future) {
          Widget leading;
          if (future.hasError) {
            leading = Icon(
              Icons.error,
              color: color.error,
            );
          } else {
            leading = const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 3,
              ),
            );
          }

          Widget body;
          if (future.hasError) {
            body = Text(
              ErrorUtils.toText(future.error),
              style: TextStyle(color: color.error),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            );
          } else {
            body = const Text('Uploading...');
          }

          return ListTile(
            leading: leading,
            minLeadingWidth: 32,
            title: Text(ref.filename),
            subtitle: body,
          );
        },
      );
    }

    return StreamBuilder<IndexProgress>(
      stream: progress,
      builder: (context, stream) {
        final processed = stream.data?.processedPages ?? 0;
        final total = stream.data?.totalPages ?? 0;
        final progress = total != 0 ? (processed / total) : null;

        Widget leading;
        if (stream.hasError) {
          leading = Icon(
            Icons.error,
            color: color.error,
          );
        } else if (progress == 1) {
          leading = Icon(
            Icons.done,
            color: color.primary,
          );
        } else {
          leading = SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              strokeWidth: 3,
              value: progress,
            ),
          );
        }

        Widget body;
        if (stream.hasError) {
          body = Text(
            ErrorUtils.toText(stream.error),
            style: TextStyle(color: color.error),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          );
        } else {
          body = Text('$processed / $total');
        }

        return ListTile(
          leading: leading,
          title: Text(ref.filename),
          subtitle: body,
          minLeadingWidth: 32,
        );
      },
    );
  }
}
