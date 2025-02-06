import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/AppBarCF.dart';
import 'package:my_first_app/Widgets/Basicos/Actividad/FloatingActionButtonCF.dart';
import 'package:my_first_app/Widgets/Basicos/MyAppBar.dart';
import 'package:my_first_app/Widgets/Basicos/MyIcon.dart';
import 'package:my_first_app/Widgets/Menu/Fragmets/MyHome.dart';
import 'package:my_first_app/Widgets/Menu/Fragmets/MyProfile.dart';
import 'package:my_first_app/Widgets/Menu/Fragmets/MySetting.dart';
import 'package:my_first_app/Widgets/Menu/MyBottomNavigatorBar.dart';
import 'package:my_first_app/Widgets/Menu/MyDrawer.dart';

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
  List fragments=[
    MyHome(),
    MyProfile(),
    MySetting()
  ];

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    //HomeArguments homeArguments=ModalRoute.of(context)!.settings.arguments as HomeArguments;
    return Scaffold(
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavigatorBar(onTab,currentIndex),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButtonCF(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBarCF("Codigo Facilito"),
      body: SafeArea(
          child: Center(child: Text("Hola mundo ")),
      ));
  }
  bottomSheet(){
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Compartir"),
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Copiar Link"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Enviar"),
              )
            ],
          );
        });
  }

  onTab(int index){
    setState(() {
      this.currentIndex=index;
    });
  }
}
