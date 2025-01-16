import 'package:flutter/material.dart';

class ComplexCombination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Combinación Compleja"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Encabezado",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Espacio entre Encabezado y Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.home, size: 40, color: Colors.blue),
                    SizedBox(height: 10),
                    Text(
                      "Inicio",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.search, size: 40, color: Colors.green),
                    SizedBox(height: 10),
                    Text(
                      "Buscar",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.person, size: 40, color: Colors.red),
                    SizedBox(height: 10),
                    Text(
                      "Perfil",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20), // Espacio entre Row y Pie de página
            Text(
              "Pie de página",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
