import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Wrap'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          spacing: 30, // Espaciado horizontal entre widgets
          runSpacing: 50, // Espaciado vertical entre líneas
          children: [
            Column(
              children: const [
                Text(
                  "Holaa",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Holaa",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Holaa",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            const Text(
              "Holaa",
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              "Holaa",
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              "Holaaaaaaaaaaaa",
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              "Holaaaaaaaaaaaa",
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              "Holaaaaaaaaaaaa",
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              "Holaaaaaaaaaaaa",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}