import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retorna la imagen desde los assets
    return Image.asset(
      'lib/assets/images/cody.jpeg',  // Asegúrate de que esta ruta sea correcta
      width: 120,
      height: 120,
    );
  }
}

/*
class MyImage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //Image(image: AssetImage('assets/images/cody.jpeg'),);


     //Image.asset('assets/images/tasks-list-image.png',
     //           width: 120,
     //           height: 120,
    /*return Image.asset(
      'assets/images/tasks-list-image.png',
      width: 120,
      height: 120,
      );*/

  }
}*/
