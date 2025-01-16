import 'package:flutter/material.dart';
class AppBarCF extends StatelessWidget implements PreferredSizeWidget{
  String title;
  AppBarCF(this.title);
 // const AppBarCF({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title,
          style: TextStyle(
              color: Colors.white)
      ),
      backgroundColor: Colors.teal,
      elevation: 30,
      shadowColor: Colors.white,
      toolbarOpacity: 0.5,
      centerTitle: true,
      leading: Icon(Icons.arrow_back,color:Colors.white ,),
      actions: [
        Icon(Icons.search,color: Colors.white,),
        Icon(Icons.more_vert,color: Colors.white,)
      ],
      toolbarHeight: 300,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
