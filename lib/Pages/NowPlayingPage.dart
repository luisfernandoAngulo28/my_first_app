import 'package:flutter/cupertino.dart'; // Importa el paquete Cupertino de Flutter para widgets de estilo iOS.
import 'package:flutter/material.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
import 'package:my_first_app/Pages/PlayListPage.dart';
import 'package:my_first_app/Widgets/MultiChild/Actividad/PlayingNow.dart';
import 'package:my_first_app/Widgets/MultiChild/ComplexCombination.dart';
import 'package:my_first_app/Widgets/MultiChild/MyColumn.dart';
import 'package:my_first_app/Widgets/MultiChild/MyColumnWithRow.dart';
import 'package:my_first_app/Widgets/MultiChild/MyRow.dart';
import 'package:my_first_app/Widgets/MultiChild/MyRowWithColumns.dart';
import 'package:my_first_app/Widgets/MultiChild/MyStack.dart';
import 'package:my_first_app/Widgets/MultiChild/MyWrap.dart'; // Importa el paquete Material de Flutter para widgets de estilo Material Design.

// Define la clase principal PlayListPage que extiende StatefulWidget,
// permitiendo que tenga un estado mutable.
class NowPlayingPage extends StatefulWidget{
  @override
  // Método que crea y retorna el estado asociado a PlayListPage.
  State<StatefulWidget> createState() =>NowPlayingPageState();//llamamos la clase estado

}
// Define la clase de estado PlaylistpageState asociada a PlayListPage.
class NowPlayingPageState extends State<NowPlayingPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // El método build define la interfaz de usuario para este widget.
    // Scaffold proporciona una estructura de diseño para la página,
    // con soporte para barra superior, cuerpo, etc.
    return Scaffold(
      //El cuerpo de la página
      body:SafeArea(

        child: PlayingNow(),
        ),
      ) ;

  }

}

/*
*
        // SafeArea asegura que el contenido no se superponga con los elementos del sistema, como la barra de estado.
        child: ElevatedButton(
          child: Text("MyHomePage"),// Texto que se muestra dentro del botón.
          onPressed: ()=>{
          // Aquí puedes añadir la lógica de navegación para ir a NowPlayingPage.
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()))

*
* */