import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class NewScreen extends StatelessWidget {
  final String? pdfPath; // Ruta del PDF que recibimos

  NewScreen({required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Nueva Pantalla',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            // Usamos el PDFView con la ruta del PDF que recibimos
            child: PDFView(
              filePath: pdfPath, // Usamos la ruta del PDF recibida
              fitPolicy: FitPolicy.WIDTH, // Controla la política de ajuste
              onError: (error) {
                // Maneja errores de carga del PDF
                print("Error al cargar el PDF: $error");
              },
              onRender: (pages) {
                // Se llama cuando el PDF se ha renderizado correctamente
                print("PDF renderizado con $pages páginas.");
              },
            ),
          ),
        ],
      ),
    );
  }
}
