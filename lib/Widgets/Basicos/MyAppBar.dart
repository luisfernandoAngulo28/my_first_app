import 'package:flutter/material.dart';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Inicioo",
          style: TextStyle(
          color: Colors.white)
      ),
      backgroundColor: Colors.pinkAccent,
      elevation: 30,
      shadowColor: Colors.white,
      toolbarOpacity: 0.5,
      centerTitle: true,
      leading: Icon(Icons.arrow_back,color:Colors.white ,),
      actions: [
        Icon(Icons.search,color: Colors.white,),
        Icon(Icons.more_vert,color: Colors.white,)
      ],
      toolbarHeight: 100,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
