import 'dart:collection';

import 'package:braingain_app/generated/chat_service.pb.dart';

/// SourcesUtils provides utility functions for working with sources.
class SourcesUtils {
  /// Replaces cites in a message with markdown links.
  static String replaceCites(Message message) {
    final documentNames = HashMap<String, String>();
    final fragments = HashMap<String, Source_Fragment>();
    for (var source in message.sources) {
      for (var fragment in source.fragments) {
        documentNames[fragment.id] = source.name;
        fragments[fragment.id] = fragment;
      }
    }

    String completion = message.completion;

    // Find all cite blocks in the completion.
    final matches = RegExp(r'\\cite\{([^\}]+)\}').allMatches(completion);
    for (final match in matches) {
      final block = match.group(0);
      final cite = match.group(1);

      if (block == null || cite == null) {
        continue;
      }

      print('Cite: block=$block cite=$cite');

      final parts = cite.split(',');
      final hrefs = <String>[];

      for (final part in parts) {
        final id = part.trim();
        final fragment = fragments[id];
        if (fragment == null) {
          continue;
        }

        final name = documentNames[id] ?? 'Unknown';
        final href = '[$name p.${fragment.position + 1}](${fragment.id})';
        hrefs.add(href);
      }

      final replacement = hrefs.join(', ');
      completion = completion.replaceFirst(block, replacement);
    }

    return completion;
  }
}
