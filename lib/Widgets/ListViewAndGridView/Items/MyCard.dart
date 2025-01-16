import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: (){print("onDoubleTap");},
      onTapDown:(TapDownDetails downDetails){print("onTapDown ${downDetails.globalPosition}");},
      onTapUp: (TapUpDetails downDetails){print("onTapUp");},
      child: Card(
        // Espacio externo alrededor de la tarjeta
        margin: EdgeInsets.all(20),

        // Altura de la sombra proyectada (efecto de profundidad)
        elevation: 30,

        // Color de fondo de la tarjeta
        color: Colors.blue,

        // Forma de la tarjeta, con bordes redondeados y un borde adicional
        shape: RoundedRectangleBorder(
          // Bordes redondeados con un radio de 20
          borderRadius: BorderRadius.circular(20),

          // Borde externo con un color y grosor especificados
          side: BorderSide(
            color: Colors.red, // Color del borde
            width: 10,         // Grosor del borde
          ),
        ),

        // Color de la sombra proyectada por la tarjeta
        shadowColor: Colors.deepOrange,

        // Contenido hijo del Card
        child: Text(
          "Hola mundoo",                // Texto dentro de la tarjeta
          style: TextStyle(
            fontSize: 40,              // Tamaño de la fuente del texto
          ),
        ),
      ),
    );
  }
}