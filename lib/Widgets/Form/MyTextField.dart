import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlAge = TextEditingController();
  String name = "";
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name), // Muestra el nombre ingresado
        TextField(
          focusNode: node1, // Controla el foco del teclado
          controller: ctrlName, // Captura el texto ingresado
          autofocus: true, // Activa el teclado automáticamente
          keyboardType: TextInputType.text,
        ),
        TextField(
          focusNode: node2,
          controller: ctrlAge,
          autofocus: true,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.green),
          maxLength: 5,
          obscureText: true, // Oculta el texto (como contraseña)
          decoration: InputDecoration(
            labelText: "Edad",
            enabled: false, // Deshabilita el campo
            prefix: Icon(Icons.favorite),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 10),
              borderRadius: BorderRadius.circular(30),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 10),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            FocusScope.of(context).requestFocus(node2); // Mueve el foco al segundo campo
            setState(() {
              this.name = ctrlName.text.toString(); // Actualiza el nombre ingresado
            });
          },
          child: Text("Guardar"),
        ),
      ],
    );
  }
}

