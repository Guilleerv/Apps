import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:file_picker/file_picker.dart';
import 'package:visor_pdf/widgets/navbar.dart';

class PDFViewerScreen extends StatefulWidget {
  @override
  _PDFViewerScreenState createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  String? _pdfPath;
  int _currentPage = 0;
  int? _totalPages; // Cambio a tipo int? (nullable)

  PDFViewController? _pdfViewController;

  Future<void> pickPDF() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      setState(() {
        _pdfPath = result.files.single.path;
      });
    }
  }

  void onPageChanged(int? page, int? total) {
    setState(() {
      _currentPage = page ?? 0;
      _totalPages = total ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Visor de PDF'),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: pickPDF,
            child: Text('Seleccionar PDF'),
          ),
          if (_pdfPath != null)
            Expanded(
              child: PDFView(
                filePath: _pdfPath!,
                onRender: (pages) {
                  setState(() {
                    _totalPages = pages;
                  });
                },
                onViewCreated: (PDFViewController pdfViewController) {
                  _pdfViewController = pdfViewController;
                },
                onPageChanged: onPageChanged,
              ),
            ),
          Text('Página $_currentPage de ${_totalPages ?? 0}'),
        ],
      ),
    );
  }
}
