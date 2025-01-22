import 'package:flutter/material.dart';


class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Permite el desplazamiento horizontal si el contenido desborda
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribuye los widgets horizontalmente
        children: [
          Icon(Icons.home, size: 50, color: Colors.blue),
          Icon(Icons.search, size: 50, color: Colors.green),
          Icon(Icons.person, size: 50, color: Colors.red),
        ],
      ),
    );
  }
}
/*
class MyRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//de manera  Horizontal
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(children: [
            Text("Holaa",style: TextStyle(fontSize: 30),),
            Text("Holaa",style: TextStyle(fontSize: 30),),
            Text("Holaa",style: TextStyle(fontSize: 30),),
          ],),
          Text("Holaa",style: TextStyle(fontSize: 30),),
          Text("Holaa",style: TextStyle(fontSize: 30),),
          Text("Holaaaaaaaaaaaa"),
          Text("Holaaaaaaaaaaaa"),
          Text("Holaaaaaaaaaaaa"),
          Text("Holaaaaaaaaaaaa"),
        ],
      ),
    );
  }

}*/