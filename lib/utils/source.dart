import 'dart:collection';

import 'package:braingain_app/generated/chat_service.pb.dart';

class SourceText {
  final Message _message;
  final _fragments = HashMap<String, Source_Fragment>();
  final _documentNames = HashMap<String, String>();

  SourceText(this._message) {
    for (var source in _message.sources) {
      for (var fragment in source.fragments) {
        _documentNames[fragment.id] = source.name;
        _fragments[fragment.id] = fragment;
      }
    }
  }

  bool containsCites(String? fragmentId) {
    return _fragments.containsKey(fragmentId);
  }

  Source_Fragment getFragment(String? fragmentId) {
    return _fragments[fragmentId]!;
  }

  /// Replaces cites in a message with markdown links.
  String toMarkdown() {
    String completion = _message.completion;

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
        final fragment = _fragments[id];
        if (fragment == null) {
          continue;
        }

        final name = _documentNames[id] ?? 'Unknown';
        final href = '[$name p.${fragment.position + 1}](${fragment.id})';
        hrefs.add(href);
      }

      final replacement = hrefs.join(', ');
      completion = completion.replaceFirst(block, replacement);
    }

    return completion;
  }
}
