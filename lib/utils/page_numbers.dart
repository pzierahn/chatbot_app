import 'package:braingain_app/generated/chat_service.pb.dart';

List<int> parsePageList(String text) {
  final pages = text.split(',');
  final pageSet = <int>{};

  for (final page in pages) {
    final range = page.split('-');
    if (range.length == 1) {
      pageSet.add(int.parse(range[0]) - 1);
    } else {
      final start = int.parse(range[0]) - 1;
      final end = int.parse(range[1]) - 1;

      for (int i = start; i <= end; i++) {
        pageSet.add(i);
      }
    }
  }

  return pageSet.toList();
}

String formatPageList(List<int> pages) {
  final pageSet = <int>{...pages};
  final pageList = pageSet.toList()..sort();

  final pageRanges = <String>[];
  int start = pageList[0];
  int end = pageList[0];

  for (int i = 1; i < pageList.length; i++) {
    if (pageList[i] == end + 1) {
      end = pageList[i];
    } else {
      if (start == end) {
        pageRanges.add('${start + 1}');
      } else {
        pageRanges.add('${start + 1}-${end + 1}');
      }

      start = pageList[i];
      end = pageList[i];
    }
  }

  if (start == end) {
    pageRanges.add('${start + 1}');
  } else {
    pageRanges.add('${start + 1}-${end + 1}');
  }

  return pageRanges.join(', ');
}

List<Prompt_Document> formatDocuments(Map<String, List<int>> selected) {
  final docs = <Prompt_Document>[];

  for (final entry in selected.entries) {
    docs.add(Prompt_Document()
      ..id = entry.key
      ..pages.addAll(entry.value));
  }

  return docs;
}

Map<String, List<int>> parseDocuments(List<Prompt_Document> docs) {
  final selected = <String, List<int>>{};

  for (final doc in docs) {
    selected[doc.id] = doc.pages;
  }

  return selected;
}
