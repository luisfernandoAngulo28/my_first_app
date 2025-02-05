import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Para formatear la fecha

class MyDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDatePickerState();
}

class MyDatePickerState extends State<MyDatePicker> {
  DateTime selectedDate = DateTime.now(); // Fecha seleccionada (por defecto, la actual)

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => selectDate(), // Al presionar, abre el DatePicker
          child: Text(
            DateFormat('dd/MM/yyyy').format(selectedDate), // Muestra la fecha en formato legible
          ),
        ),
        SizedBox(height: 10), // Espacio entre el botón y el texto
        Text("Fecha seleccionada: ${DateFormat('dd/MM/yyyy').format(selectedDate)}")
      ],
    );
  }

  Future<void> selectDate() async {
    DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Fecha inicial en el DatePicker
      firstDate: DateTime(2025), // Fecha mínima seleccionable
      lastDate: DateTime(2026),  // Fecha máxima seleccionable
    );

    if (dateTime != null && selectedDate != dateTime) {
      setState(() {
        selectedDate = dateTime; // Actualiza la fecha seleccionada
      });
    }
  }
}
/*
class MyDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDatePickerState();
}

class MyDatePickerState extends State<MyDatePicker> {
  DateTime selectedDate = DateTime.now();//toma la fecha actual
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ElevatedButton(onPressed: ()=>selectDate(),
        child: Text(selectedDate.toString()));
  }

  selectDate()async{//metodo asincrono
    DateTime? dateTime = await showDatePicker(context: context,
        initialDate: selectedDate,//
        firstDate: DateTime(2025), lastDate: DateTime(2026));
    if(dateTime!=null && selectedDate !=dateTime){
      setState(() {
        this.selectedDate=dateTime;
      });
    }

  }

}

 */