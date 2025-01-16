import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/PlayListPage.dart';
class FloatingActionButtonCF extends StatelessWidget {
  // const MyFloatingActionButton({super.key, required Null Function() onPressed});


  @override
  Widget build(BuildContext context) {

    return FloatingActionButton.extended(
      onPressed: () {
        //print("FloatingActionButtonCF");
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayListPage()));
        //Navigator.popAndPushNamed(context, ROUTER_PLAY_LIST);
        Navigator.pushNamedAndRemoveUntil(context, ROUTER_PLAY_LIST, (Route<dynamic>route)=>false);
      },
      icon: Icon(Icons.add,size: 40),
      label: Text("Agregar Usuario"),
      backgroundColor: Colors.cyan,
      elevation: 20,
      tooltip: "Agregar Usuario",
    );
  }
}
