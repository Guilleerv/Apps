import 'package:file_picker/file_picker.dart';

class PdfService {
  Future<String?> pickAndLoadPdf() async {
    try {
      final filePath = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (filePath != null && filePath.files.isNotEmpty) {
        return filePath.files.first.path;
      } else {
        return null;
      }
    } catch (e) {
      print("Error al seleccionar el PDF: $e");
      return null;
    }
  }
}
