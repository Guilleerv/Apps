import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:visor_pdf/widgets/pdf_button.dart'; // Importa el nuevo widget

class NewScreen extends StatelessWidget {
  final String? pdfPath;

  NewScreen({required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Pantalla De Visualización',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: PDFView(
              filePath: pdfPath,
              fitPolicy: FitPolicy.WIDTH,
              onError: (error) {
                print("Error al cargar el PDF: $error");
              },
              onRender: (pages) {
                print("PDF renderizado con $pages páginas.");
              },
            ),
          ),
          PdfButton(
            onPress: () {},
            buttonText: 'Compartir',
          ),
        ],
      ),
    );
  }
}
