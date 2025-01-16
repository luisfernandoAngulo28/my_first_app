import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/AppBarCF.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/FloatingActionButtonCF.dart';
import 'package:my_first_app/Widgets/Basicos/MyAppBar.dart';
import 'package:my_first_app/Widgets/Basicos/MyIcon.dart';

import '../Widgets/Basicos/Actividad/ImageCF.dart';
import '../Widgets/Basicos/MyButtons.dart';
import '../Widgets/Basicos/MyFloatingActionButton.dart';
import '../Widgets/Basicos/MyImage.dart';
import '../Widgets/Basicos/MyRichText.dart';
import '../Widgets/Basicos/MyText.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  //required this.title
  //final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    HomeArguments homeArguments=ModalRoute.of(context)!.settings.arguments as HomeArguments;
    return Scaffold(
      backgroundColor: Colors.white,

    appBar: AppBarCF(homeArguments.title),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Imagecf(), // Muestra la imagen en el centro
          Text(homeArguments.message)
        ],
      ),
    ),
      floatingActionButton: FloatingActionButtonCF(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

