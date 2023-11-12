import 'package:flutter/material.dart';
import 'package:visor_pdf/screens/new_screen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:visor_pdf/widgets/pdf_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'PDFViewer',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60),
            Align(
              alignment: Alignment(0, -10),
              child: Image.asset(
                'assets/pdfview.png',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 40),
            PdfButton(onPress: () async {
              final filePath = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['pdf'],
              );

              if (filePath != null && filePath.files.isNotEmpty) {
                final selectedPdfPath = filePath.files.first.path;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewScreen(pdfPath: selectedPdfPath),
                  ),
                );
              } else {}
            }),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Pantalla 1'),
              onTap: () {
                Navigator.pop(context);
                // Navegar a la pantalla 1
              },
            ),
            ListTile(
              title: Text('Pantalla 2'),
              onTap: () {
                Navigator.pop(context);
                // Navegar a la pantalla 2
              },
            ),
          ],
        ),
      ),
    );
  }
}
