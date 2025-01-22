import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myElevatedButton();
  }

    myElevatedButton() {

    return ElevatedButton.icon(
      icon: Icon(Icons.save,color: Colors.indigo,),
      label: Text("Guardar"),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        shadowColor: Colors.yellow,
        elevation: 20,
      ),
      onLongPress: (){
        print("ElevatedButton onLongPress");
      }
      ,
      onPressed: () {
        print("ElevatedButton presionado");
      },);
  }
  myTextButton(){//boton en forma de texto
    return TextButton(
        onPressed: (){print("TextButton"); },
        child: Text("Guardar"));
  }

myOutlineButton()  {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.yellow,width: 4),
          foregroundColor:Colors.white,
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))
          )
      ),
      onPressed:(){print("OutlinedButton"); },
      child: Text("Guardar"));
}


}

