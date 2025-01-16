import 'package:flutter/material.dart';

class Imagecf  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retorna la imagen desde los assets
    return Image.asset(
      'lib/assets/images/cody.jpeg',  // Asegúrate de que esta ruta sea correcta
    );
  }
}