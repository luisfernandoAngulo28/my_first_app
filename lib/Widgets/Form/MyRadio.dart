import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyRadioState();
}

class MyRadioState extends State<MyRadio> {
  // Variable para almacenar el valor seleccionado
  String currentValue = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Opción 1: Soltero
        RadioListTile(
          value: "Soltero", // Valor que representa esta opción
          title: Text("Soltero"), // Texto visible
          groupValue: currentValue, // Valor actualmente seleccionado
          onChanged: (value) => onChanged(value), // Manejo de cambio de selección
        ),

        // Opción 2: Casado
        RadioListTile(
          value: "Casado", // Valor que representa esta opción
          title: Text("Casado"), // Texto visible
          groupValue: currentValue, // Valor actualmente seleccionado
          onChanged: (value) => onChanged(value), // Manejo de cambio de selección
        ),

        // Muestra el valor seleccionado en pantalla
        Text("Seleccionado: $currentValue")
      ],
    );
  }

  // Función para actualizar el estado cuando se selecciona una opción
  void onChanged(String? value) {
    setState(() {
      currentValue = value ?? ""; // Si value es null, se asigna una cadena vacía
    });
  }
}
