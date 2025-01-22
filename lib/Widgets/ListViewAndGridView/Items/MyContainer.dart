import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Construcción del contenedor
    return InkWell(
      onTap: (){print("onTap");},
      onLongPress: (){print("onLongPress");},
      child: Container(
        // Establece las dimensiones del contenedor
        width: 200, // Ancho de 200 píxeles
        height: 200, // Altura de 200 píxeles

        // Alinea el contenido dentro del contenedor
        alignment: Alignment.center, // Centra el hijo en el contenedor

        // Establece un margen externo
        margin: EdgeInsets.symmetric(vertical: 30), // Margen vertical de 30 píxeles

        // Define un espacio interno (padding)
        padding: EdgeInsets.only(top: 60), // Espacio interno superior de 60 píxeles

        // Personalización visual con BoxDecoration
        decoration: BoxDecoration(
          color: Colors.green, // Color de fondo (solo visible si no hay imagen o degradado)

          // Define un borde para el contenedor
          border: Border.all(
            color: Colors.black, // Color negro para el borde
            width: 10, // Ancho del borde de 10 píxeles
          ),

          // Cambia la forma del contenedor
          shape: BoxShape.circle, // Convierte el contenedor en un círculo

          // Añade una sombra al contenedor
          boxShadow: [
            BoxShadow(
              color: Colors.black12, // Sombra con un color negro suave
              offset: Offset(4, 8), // Desplaza la sombra (4px a la derecha, 8px abajo)
            ),
          ],

          // Aplica un degradado como fondo
          gradient: LinearGradient(
            colors: [
              Colors.red, // Color inicial del degradado
              Colors.blue, // Color final del degradado
            ],
            begin: Alignment.topLeft, // Comienza en la esquina superior izquierda
            end: Alignment.topRight, // Termina en la esquina superior derecha
          ),

          // Añade una imagen de fondo
          image: DecorationImage(
            image: AssetImage('lib/assets/images/cody2.jpeg'), // Imagen desde los assets
            fit: BoxFit.cover, // Ajusta la imagen para cubrir el contenedor
          ),
        ),
      ),
    );
  }
}
