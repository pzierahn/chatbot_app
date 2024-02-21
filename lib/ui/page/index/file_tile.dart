import 'package:braingain_app/service/index.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';

class FileUploadProgress extends StatelessWidget {
  const FileUploadProgress({
    super.key,
    required this.status,
  });

  final IndexStatus status;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final style = Theme.of(context).textTheme.bodySmall?.merge(TextStyle(
          color: color.outline,
        ));

    Widget leading;
    if (status.hasError) {
      leading = Icon(
        Icons.error,
        color: color.error,
      );
    } else if (status.success) {
      leading = Icon(
        Icons.check_circle,
        color: color.primary,
      );
    } else {
      leading = const SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(strokeWidth: 3),
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
    } else {
      body = Text(
        status.status,
        style: style,
      );
    }

    return ListTile(
      leading: leading,
      title: Text(status.title),
      subtitle: body,
      minLeadingWidth: 32,
    );
  }
}
