import 'package:flutter/material.dart';
class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Alineación vertical
        crossAxisAlignment: CrossAxisAlignment.center, // Alineación horizontal
        mainAxisSize: MainAxisSize.min, // Tamaño mínimo de la columna
        children: [
          Text(
            "Texto 1",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "Texto 2",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "Texto 3",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
/*
class MyColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//de Manera Vertical (y)
      crossAxisAlignment: CrossAxisAlignment.end, //de manera Horizontal (x)
      mainAxisSize: MainAxisSize.min,
      children: [//se colocan de manera vertical
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),
        Text("Holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",style: TextStyle(fontSize: 30),),

        Text("Hola",style: TextStyle(fontSize: 30),),
        Text("Hola",style: TextStyle(fontSize: 30),)
      ],
    )
    );
  }

}*/