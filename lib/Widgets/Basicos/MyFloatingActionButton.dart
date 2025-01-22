import 'package:flutter/material.dart';
class MyFloatingActionButton extends StatelessWidget {
 // const MyFloatingActionButton({super.key, required Null Function() onPressed});


  @override
  Widget build(BuildContext context) {

    return FloatingActionButton.extended(
      onPressed: () {
        print("MyFloatingActionButton");
      },
      icon: Icon(Icons.add,size: 40,),
      label: Text("Agregar Usuario"),
        backgroundColor: Colors.cyan,
        elevation: 20,
        tooltip: "Agregar Usuario",
    );
  }
}
