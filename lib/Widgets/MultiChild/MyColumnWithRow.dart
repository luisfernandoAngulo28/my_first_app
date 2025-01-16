import 'package:flutter/material.dart';

class MyColumnWithRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column con Row"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Alineación vertical
          crossAxisAlignment: CrossAxisAlignment.center, // Alineación horizontal
          children: [
            Text(
              "Encabezado",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Espacio entre el encabezado y el Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Espaciado entre íconos
              children: [
                Icon(Icons.home, size: 40, color: Colors.blue),
                Icon(Icons.search, size: 40, color: Colors.green),
                Icon(Icons.person, size: 40, color: Colors.red),
              ],
            ),
            SizedBox(height: 20), // Espacio entre el Row y el pie de página
            Text(
              "Pie de página",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
