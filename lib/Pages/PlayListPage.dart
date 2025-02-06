
import 'package:flutter/cupertino.dart'; // Importa el paquete Cupertino de Flutter para widgets de estilo iOS.
import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Pages/NowPlayingPage.dart';
import 'package:my_first_app/Values/ColorsApp.dart';
import 'package:my_first_app/Widgets/Form/MyCheckBox.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/PlayListView.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyGridView.dart';
import 'package:my_first_app/generated/l10n.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/MyListView.dart'; // Importa el paquete Material de Flutter para widgets de estilo Material Design.

// Define la clase principal PlayListPage que extiende StatefulWidget,
// permitiendo que tenga un estado mutable.
class PlayListPage extends StatefulWidget{
  @override
  // Método que crea y retorna el estado asociado a PlayListPage.
  State<StatefulWidget> createState() =>PlaylistpageState();

}
// Define la clase de estado PlaylistpageState asociada a PlayListPage.
class PlaylistpageState extends State<PlayListPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // El método build define la interfaz de usuario para este widget.
    // Scaffold proporciona una estructura de diseño para la página,
    // con soporte para barra superior, cuerpo, etc.
   return Scaffold(

     appBar: AppBar(
       title: Text(S.of(context).welcome),
     ),
      // backgroundColor:testOpa,
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.pink[100],
       onPressed: (){
         ThemeMode currentTheme = myAppKey.currentState!.themeMode;
         myAppKey.currentState!.changeTheme(
             currentTheme == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark
         );
       },
       child: Icon(Icons.nightlight_round,),
     ),
    /* floatingActionButton: FloatingActionButton(
         onPressed: ()=>myListViewKey.currentState?.add(Sound(title: "Rescate",author: "Daddy Yankee")),
         child: Icon(Icons.add),    
     ),*/
     //El cuerpo de la página
     body:SafeArea(
       // SafeArea asegura que el contenido no se superponga con los elementos del sistema, como la barra de estado.

        child:PlayListView() ,
          /*ElevatedButton(
            child: Text("NowPlayingPage"),// Texto que se muestra dentro del botón.
            onPressed: ()=>{
              // Aquí puedes añadir la lógica de navegación para ir a NowPlayingPage.
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NowPlayingPage()))
            },
          ),*/
     ) ,
   );
  }

}