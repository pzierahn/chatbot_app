import 'package:file_picker/file_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

final supabase = Supabase.instance.client;

class StorageUtils {
  static Future<Object?> upload(PlatformFile file, String collection) async {
    final docId = const Uuid().v4().toString();
    final filePath = "${supabase.auth.currentUser?.id ?? ""}/"
        "$collection/"
        "$docId.pdf";

    final bucket = supabase.storage.from('documents');

    await bucket.uploadBinary(
      filePath,
      file.bytes!,
    );

    return null;
  }
}
