import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Model/Sound.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';

/// `MyListView` es un widget con estado que muestra una lista de elementos `Sound`.
class MyListView extends StatefulWidget {
  //un Constructor
  MyListView():super(key: myListViewKey);

  @override
  State<StatefulWidget> createState() => MyListViewState();
}

//la clase estado
/// Estado asociado al widget `MyListView`.
class MyListViewState extends State<MyListView> {
  /// Lista local de sonidos que se mostrará en el ListView.
  List<Sound> mySounds = [];

  @override
  void initState() {
    super.initState();
    // Inicializa la lista local con los sonidos predefinidos.
    this.mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red, // Fondo rojo para el contenedor principal.
      child: ListView.builder(
        shrinkWrap: true,
        reverse: true, // Invierte el orden de la lista.
        itemCount: mySounds.length, // Número de elementos en la lista.
        itemBuilder: (context, index) {
          // Obtiene el sonido en la posición actual.
          Sound sound = this.mySounds[index];
          return Dismissible(
            direction: DismissDirection.endToStart, // Dirección del deslizamiento para eliminar.
            key: ObjectKey(sound), // Clave única para el widget.
            child: MyListTile(sound,index,remove), // Widget personalizado para mostrar la información del sonido.
            onDismissed: (direction) {
              // Acción al deslizar para eliminar.
             remove(sound);
            },
          );
        },
      ),
    );
  }

  ///metodos auxiliares
  update(Sound sound,int index){
    setState(() {
      mySounds[index]=sound;
    });
  }
  add(Sound sound){
    setState(() {
      mySounds.add(sound);
    });
  }
  remove(Sound sound){
    setState(() {
      mySounds.remove(sound); // Elimina el sonido de la lista.
    });
  }
}
