import 'package:flutter/material.dart';

// Definimos un StatefulWidget llamado MyForm
class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormState();
}

// Estado del formulario
class MyFormState extends State<MyForm> {
  // Clave global para manejar el estado del formulario
  GlobalKey<FormState> formKey = GlobalKey();

  // Controladores para capturar el texto ingresado en los campos
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPassCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey, // Se asigna la clave para controlar la validación del formulario
      child: Column(
        children: [
          // Campo de entrada para el nombre
          TextFormField(
            controller: nameCtrl, // Usa el controlador para obtener el valor ingresado
            decoration: InputDecoration(labelText: "Name"),
            validator: (value) {
              if (value?.isEmpty == true) {
                return "El nombre es necesario"; // Mensaje si el campo está vacío
              }
              return null;
            },
          ),
          // Campo de entrada para el correo electrónico
          TextFormField(
            controller: emailCtrl,
            decoration: InputDecoration(labelText: "Correo"),
            validator: (value) {
              String pattern =
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
              RegExp regExp = RegExp(pattern);
              if (value?.isEmpty == true) {
                return "El email es necesario"; // Si el campo está vacío
              } else if (!regExp.hasMatch(value!)) {
                return "Correo inválido"; // Si el formato del correo no es válido
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress, // Muestra el teclado de email
          ),
          // Campo de entrada para el teléfono
          TextFormField(
            controller: mobileCtrl,
            decoration: InputDecoration(labelText: "Teléfono"),
            validator: (value) {
              if (value?.isEmpty == true) {
                return "El teléfono es necesario"; // Si el campo está vacío
              } else if (value!.length != 10) {
                return "El número debe tener 10 dígitos"; // Si no tiene 10 caracteres
              }
              return null;
            },
            keyboardType: TextInputType.number, // Permite solo números
          ),
          // Campo de entrada para la contraseña
          TextFormField(
            controller: passwordCtrl,
            decoration: InputDecoration(labelText: "Contraseña"),
            obscureText: true, // Oculta el texto ingresado (modo contraseña)
          ),
          // Campo de entrada para repetir la contraseña
          TextFormField(
            controller: repeatPassCtrl,
            decoration: InputDecoration(labelText: "Repetir contraseña"),
            validator: (value) {
              if (value != passwordCtrl.text) {
                return "Las contraseñas no coinciden"; // Si las contraseñas no son iguales
              }
              return null;
            },
            obscureText: true, // Oculta el texto ingresado
          ),
          // Botón de guardar
          ElevatedButton(
            onPressed: () => save(), // Llama a la función save() cuando se presiona
            child: Text("Guardar"),
          ),
        ],
      ),
    );
  }

  // Función para guardar los datos ingresados
  save() {
    if (formKey.currentState!.validate()) { // Valida los campos del formulario
      print("Nombre: ${nameCtrl.text}");
      print("Correo: ${emailCtrl.text}");
      print("Teléfono: ${mobileCtrl.text}");
      print("Contraseña: ${passwordCtrl.text}");
      print("Repetir Contraseña: ${repeatPassCtrl.text}");

      // Reinicia el formulario después de guardar
      formKey.currentState?.reset();
    }
  }
}