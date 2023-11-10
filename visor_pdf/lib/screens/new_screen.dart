import 'package:visor_pdf/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
class NewScreen extends StatelessWidget {
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
          // Agrega un widget PDFView para mostrar el PDF
          PDFView(
            filePath: 'assets/tu_pdf.pdf', // Reemplaza con la ruta de tu PDF
            fitPolicy: FitPolicy.WIDTH, // Controla la política de ajuste
          ),
          ElevatedButton(
            onPressed: () {
              // Agrega la lógica para hacer zoom en el PDF aquí
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