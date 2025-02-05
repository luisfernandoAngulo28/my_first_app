import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyCheckBoxState();
}

class MyCheckBoxState extends State<MyCheckBox> { //la clase estado
  String currentValue = "";
  List<String>courses=["Flutter","Dart","PHP","android","iOS"];// Lista de opciones a mostrar en los checkboxes
  // Lista booleana que indica si cada checkbox está marcado o no
  List<bool> isCheked=[];//arreglo de tipo bool


  @override
  void initState() {
    //super.initState();
    // Inicializa la lista 'isChecked' con valores 'false' para cada curso
    isCheked=List<bool>.filled(courses.length, false);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(children: [
      // Muestra la lista booleana como texto para depuración
      Text(isCheked.toString()),
      // ListView.builder se usa para generar dinámicamente los checkboxes
      ListView.builder(
          shrinkWrap: true,// Ajusta la lista a su contenido
          itemCount: courses.length,// Número de elementos en la lista
          itemBuilder: (context,index){
            return CheckboxListTile(
                title: Text(courses[index]), // Nombre del curso
                value: isCheked[index],// Estado del checkbox
                onChanged: (value){
                  setState(() {
                    isCheked[index]=value as bool;   // Actualiza el estado del checkbox
                  });
                });
          })],);
  }

  onChanged(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
}
