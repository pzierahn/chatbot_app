import 'dart:typed_data';

import 'package:braingain_app/generated/documents.pb.dart';
import 'package:braingain_app/service/supabase.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uuid/uuid.dart';

class StorageUtils {
  static Document create({
    required String collection,
    required PlatformFile file,
  }) {
    final docId = const Uuid().v4().toString();
    final filePath = "${supabase.auth.currentUser?.id ?? ""}/"
        "$collection/"
        "$docId.pdf";

    return Document()
      ..id = docId
      ..filename = file.name
      ..path = filePath
      ..collectionId = collection;
  }

  static Future<Document> upload(
    Document doc,
    Uint8List bytes,
  ) async {
    final bucket = supabase.storage.from('documents');

    await bucket.uploadBinary(doc.path, bytes);

    return doc;
  }
}
