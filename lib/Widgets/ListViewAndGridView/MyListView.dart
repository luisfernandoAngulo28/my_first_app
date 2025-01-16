import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.red,
      child: ListView.builder(
        shrinkWrap: true,
          //scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: sounds.length,// Número de elementos en la lista
          itemBuilder: (context,index)=>MyListTile(sounds[index]),// Construcción dinámica de ítems
      ),
    );
  }
  
}