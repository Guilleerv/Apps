import 'package:flutter/material.dart';
import 'package:visor_pdf/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.redAccent.shade200,
          background: Colors.grey.shade50,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
