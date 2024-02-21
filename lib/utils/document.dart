import 'package:braingain_app/generated/document_service.pb.dart';

class DocumentUtils {
  static String getTitle(DocumentMetadata meta) {
    if (meta.file.filename.isNotEmpty) {
      return meta.file.filename;
    }

    return meta.web.title;
  }
}
