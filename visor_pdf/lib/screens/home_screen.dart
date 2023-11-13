import 'package:flutter/material.dart';
import 'package:visor_pdf/screens/new_screen.dart';
import 'package:visor_pdf/widgets/pdf_button.dart';
import 'package:visor_pdf/services/pdf_service.dart';

class HomeScreen extends StatelessWidget {
  final PdfService pdfService = PdfService();

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
            PdfButton(
              onPress: () async {
                final selectedPdfPath = await pdfService.pickAndLoadPdf();

                if (selectedPdfPath != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewScreen(pdfPath: selectedPdfPath),
                    ),
                  );
                } else {}
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Contáctanos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Califícanos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
