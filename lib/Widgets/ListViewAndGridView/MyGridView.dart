import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';

class MyGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Define cómo será la cuadrícula
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,  // Máximo ancho de un elemento en la grilla
        crossAxisSpacing: 30,     // Espacio horizontal entre columnas
        mainAxisSpacing: 40,      // Espacio vertical entre filas
      ),
      // Cantidad de elementos a mostrar
      itemCount: 30,
      // Constructor que crea cada elemento de la cuadrícula
      itemBuilder: (context, index) => MyCard(), // Cada elemento es un MyCard()
    );
  }
    // TODO: implement build

/*
* GridView(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4, // Número fijo de columnas
  ),
  children: [
    MyCard(), // Widgets individuales que se colocan en la cuadrícula
    MyCard(),
    MyCard(),
    MyCard(),
    MyCard(),
    MyCard(),
    MyCard(),
    MyCard(),
  ],
);
* */
}