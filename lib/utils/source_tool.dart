import 'dart:collection';

import 'package:braingain_app/generated/chat_service.pb.dart';

// Tool for handling sources in a message.
class SourceTool {
  // Map fragment ids to their fragments.
  final _fragments = HashMap<String, Source_Fragment>();

  // Map fragment ids to their document names.
  final _documentNames = HashMap<String, String>();

  // Map document ids to their names.
  final _document = HashMap<String, String>();

  SourceTool(List<Message> messages) {
    for (var message in messages) {
      for (var source in message.sources) {
        _document[source.documentId] = source.name;

        for (var fragment in source.fragments) {
          _documentNames[fragment.id] = source.name;
          _fragments[fragment.id] = fragment;
        }
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
  String messageToMarkdown(String completion) {
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

        if (_fragments.containsKey(id)) {
          final fragment = _fragments[id];
          if (fragment == null) {
            continue;
          }

          final name = _documentNames[id] ?? 'Unknown';
          final href = '[$name p.${fragment.position + 1}](${fragment.id})';
          hrefs.add(href);
        }

        if (_document.containsKey(id)) {
          final name = _document[id] ?? 'Unknown';
          final href = '[$name]';
          hrefs.add(href);
        }
      }

      final replacement = hrefs.join(', ');
      completion = completion.replaceFirst(block, replacement);
    }

    if (matches.isEmpty) {
      // Replace cites outside of cite blocks.
      for (var fragment in _fragments.entries) {
        final id = fragment.key;
        final name = _documentNames[id] ?? 'Unknown';
        final href = '[$name p.${fragment.value.position + 1}]($id)';
        completion = completion.replaceAll(id, href);
      }
    }

    // Replace all document ids with document names.
    for (var document in _document.entries) {
      completion = completion.replaceAll(document.key, document.value);
    }

    return completion;
  }
}
