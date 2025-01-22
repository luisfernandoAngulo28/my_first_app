
import 'package:flutter/cupertino.dart'; // Importa el paquete Cupertino de Flutter para widgets de estilo iOS.
import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
import 'package:my_first_app/Widgets/Basicos/MyText.dart'; // Importa el paquete Material de Flutter para widgets de estilo Material Design.

// Define la clase principal PlayListPage que extiende StatefulWidget,
// permitiendo que tenga un estado mutable.
class LoginPage extends StatefulWidget{
  @override
  // Método que crea y retorna el estado asociado a PlayListPage.
  State<StatefulWidget> createState() =>LoginPageState();

}
// Define la clase de estado PlaylistpageState asociada a PlayListPage.
class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // El método build define la interfaz de usuario para este widget.
    // Scaffold proporciona una estructura de diseño para la página,
    // con soporte para barra superior, cuerpo, etc.
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade200,
      //El cuerpo de la página
      body:SafeArea(

        // SafeArea asegura que el contenido no se superponga con los elementos del sistema, como la barra de estado.
        child: ElevatedButton(
          child: Text("MyHomePage"),// Texto que se muestra dentro del botón.
          onPressed: ()=>{
            // Aquí puedes añadir la lógica de navegación para ir a NowPlayingPage.
          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()))
            Navigator.pushNamed(context, ROUTER_HOME,arguments:HomeArguments("Inicioo","Hola Mundoo"))
          },
        ),
      ) ,
    );
  }

}
/*
* para mostrar una ventana usamos push
* para quitar una ventana usamos pop
*para quitar y poner otra ruta usamos
* Navigator.popAndPushNamed(context, ROUTER_);
* con este se eliminan todas menos la vista especificada
* Navigator.pushNamedAndRemoveUntil(context, ROUTER_PLAY_LIST, (Route<dynamic>route)=>false);
* */