import 'package:flutter/material.dart';
import 'package:visor_pdf/screens/visor_pdf.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PDFViewerScreen(),
    );
  }
}
