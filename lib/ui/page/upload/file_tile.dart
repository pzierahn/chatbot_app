import 'package:braingain_app/generated/documents.pb.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';

class DocumentStatus {
  DocumentStatus({
    this.error,
    required this.ref,
    this.uploaded = false,
    this.progress,
  });

  final Object? error;
  final Document ref;
  final bool uploaded;
  final IndexProgress? progress;

  bool get hasError => error != null;
}

class FileUploadProgress extends StatelessWidget {
  const FileUploadProgress({
    super.key,
    required this.ref,
    required this.status,
  });

  final Document ref;

  final DocumentStatus status;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final style = Theme.of(context).textTheme.bodySmall?.merge(TextStyle(
          color: color.outline,
        ));

    final processed = status.progress?.processedPages ?? 0;
    final total = status.progress?.totalPages ?? 0;
    final progress = total != 0 ? (processed / total) : null;

    Widget leading;
    if (status.hasError) {
      leading = Icon(
        Icons.error,
        color: color.error,
      );
    } else if (progress == 1) {
      leading = Icon(
        Icons.check_circle,
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
    if (status.hasError) {
      body = Text(
        ErrorUtils.toText(status.error),
        style: style?.merge(TextStyle(color: color.error)),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
    } else if (!status.uploaded) {
      body = Text(
        'Uploading...',
        style: style,
      );
    } else {
      body = Text(
        '$processed / $total',
        style: style,
      );
    }

    return ListTile(
      leading: leading,
      title: Text(ref.filename),
      subtitle: body,
      minLeadingWidth: 32,
    );
  }
}
