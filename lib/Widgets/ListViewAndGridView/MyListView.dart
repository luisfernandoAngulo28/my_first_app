import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyListViewState();
}

//la clase estado
class MyListViewState extends State<MyListView> {
  List<Sound>mySounds=[];

  @override
  void initState() {
    this.mySounds=sounds;//el arreglo recibe una musica
  } //lista Vacia

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.red,
      child: ListView.builder(
          shrinkWrap: true,
          //scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: sounds.length, // Número de elementos en la lista
          itemBuilder: (context, index) {
            Sound sound = this.mySounds[index]; //Una posicion de mi lista musical
            return Dismissible(
                direction: DismissDirection.endToStart,
                key: ObjectKey(sound),
                child: MyListTile(sound),
                onDismissed: (direction) {//detecta el deslis del dedo
                 setState(() {
                   mySounds.remove(sound);//elimina
                 });
              },);
          }),
    );
  }
}
