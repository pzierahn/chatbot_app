import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';

class ErrorSnackBar {
  static void show(BuildContext context, Object error) {
    final color = Theme.of(context).colorScheme;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color.errorContainer,
        content: Text(
          ErrorUtils.toText(error),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: color.onErrorContainer,
          ),
        ),
      ),
    );
  }
}
