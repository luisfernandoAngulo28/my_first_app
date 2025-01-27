import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Model/Sound.dart';
typedef  VoidCallbackParam(Sound sound);//crea un miniobjeto
class MyListTile  extends StatelessWidget {
  //atributos
  Sound sound; // Objeto Sound que contiene la información de la canción
  int index;
  VoidCallbackParam voidCallbackParam;
  MyListTile(this.sound,this.index,this.voidCallbackParam); // Constructor que recibe un objeto Sound
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(sound.title,style: TextStyle(fontSize: 30),),
      subtitle: Text(sound.author),
      trailing: InkWell(
           onTap: ()=>myListViewKey.currentState?.remove(sound),
          //onTap: ()=>voidCallbackParam(sound),//usamos el miniobjeto
          child:  Icon(Icons.close)) ,
      leading: Icon(Icons.chrome_reader_mode),
      //aqui Insertamos y actualizamos la lista
      onTap: ()=>myListViewKey.currentState?.update(sound..title="Hola Mundo", index),
      onLongPress: (){print("ListTitle onLongPress");},
    );
  }

}