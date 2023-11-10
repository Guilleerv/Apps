import 'package:flutter/material.dart';
import 'package:visor_pdf/screens/new_screen.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white), 
        
        title: Text('PDFViewer',
        style: TextStyle(
              color: Colors.white, // Cambia el color del texto del título
            ),),
      
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60),
            Align(
               alignment: Alignment(0,-10),
               child: Image.asset(
               'assets/pdfview.png',
                width: 200,
                height: 200,
            ),
          ),
          SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewScreen(),
                  ),
                );
              },
              child: Text('Abrir PDF'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(300, 75)), // Ajusta el tamaño del botón
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Ajusta el radio para redondear las esquinas
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary), // Cambia el color de fondo
              ),
            )
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
