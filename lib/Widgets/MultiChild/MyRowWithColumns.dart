import 'package:flutter/material.dart';

class MyRowWithColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row con Columns"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribución horizontal
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centrado vertical
              children: [
                Icon(Icons.home, size: 40, color: Colors.blue),
                SizedBox(height: 10), // Espacio entre el ícono y el texto
                Text(
                  "Inicio",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search, size: 40, color: Colors.green),
                SizedBox(height: 10),
                Text(
                  "Buscar",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, size: 40, color: Colors.red),
                SizedBox(height: 10),
                Text(
                  "Perfil",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
