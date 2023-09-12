import 'dart:typed_data';

import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:file_picker/file_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

final supabase = Supabase.instance.client;

class StorageUtils {
  static StorageRef createRef({
    required String collection,
    required PlatformFile file,
  }) {
    final docId = const Uuid().v4().toString();
    final filePath = "${supabase.auth.currentUser?.id ?? ""}/"
        "$collection/"
        "$docId.pdf";

    return StorageRef()
      ..id = docId
      ..filename = file.name
      ..path = filePath
      ..collection = collection;
  }

  static Future<StorageRef> upload(
    StorageRef ref,
    Uint8List bytes,
  ) async {
    final bucket = supabase.storage.from('documents');

    await bucket.uploadBinary(
      ref.path,
      bytes,
    );

    return ref;
  }
}
