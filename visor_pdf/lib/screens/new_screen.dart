import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:visor_pdf/screens/home_screen.dart';

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
          // Usamos el PDFView con la ruta del PDF que recibimos
          PDFView(
            filePath: pdfPath, // Usamos la ruta del PDF recibida
            fitPolicy: FitPolicy.WIDTH, // Controla la política de ajuste
          ),
          ElevatedButton(
            onPressed: () {
              // Agrega la lógica para hacer zoom en el PDF aquí
              // Puedes utilizar métodos de PDFView para interactuar con el PDF.
            },
            child: Text('Hacer Zoom al PDF'),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent, // Cambia el color del botón
            ),
          ),
        ],
      ),
    );
  }
}
