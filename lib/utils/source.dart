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

    if (!completion.contains("\\cite{")) {
      // Replace cites outside of cite blocks.
      for (var fragment in _fragments.entries) {
        final id = fragment.key;
        final name = _documentNames[id] ?? 'Unknown';
        final href = '[$name p.${fragment.value.position + 1}]($id)';
        completion = completion.replaceAll(id, href);
      }
    }

    // Replace all document ids with document names.
    for (var document in _documentNames.entries) {
      completion = completion.replaceAll(document.key, document.value);
    }

    return completion;
  }
}
