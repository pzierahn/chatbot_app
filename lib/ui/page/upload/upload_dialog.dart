import 'package:file_picker/file_picker.dart';

Future<List<PlatformFile>> showUploadDialog() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowMultiple: true,
    allowedExtensions: ['pdf'],
    withData: false,
  );

  if (result != null) {
    return result.files;
  } else {
    return [];
  }
}
