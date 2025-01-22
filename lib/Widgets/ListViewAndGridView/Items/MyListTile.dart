import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Model/Sound.dart';

class MyListTile  extends StatelessWidget {
  Sound sound; // Objeto Sound que contiene la información de la canción
  MyListTile(this.sound); // Constructor que recibe un objeto Sound
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(sound.title,style: TextStyle(fontSize: 30),),
      subtitle: Text(sound.author),
      trailing: Icon(Icons.more_vert),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: (){print("ListTitle onTap");},
      onLongPress: (){print("ListTitle onLongPress");},
    );
  }

}