import 'package:flutter/material.dart';

class MyFormF extends StatefulWidget {
  @override
  State<MyFormF> createState() => MyFormFState();
}

class MyFormFState extends State<MyFormF> {
  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController mobileCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController repeatPassCtrl = TextEditingController();

  // Expresión regular para validar correos electrónicos
  final RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  @override
  void dispose() {
    // Liberar recursos de los controladores al cerrar el widget
    nameCtrl.dispose();
    emailCtrl.dispose();
    mobileCtrl.dispose();
    passwordCtrl.dispose();
    repeatPassCtrl.dispose();
    super.dispose();
  }

  // Validar el nombre
  String? validateName(String? value) {
    if (value!.isEmpty) return "El nombre es necesario";
    return null;
  }

  // Validar el correo
  String? validateEmail(String? value) {
    if (value!.isEmpty) return "El email es necesario";
    if (!emailRegExp.hasMatch(value)) return "Correo inválido";
    return null;
  }

  // Validar el teléfono
  String? validatePhone(String? value) {
    if (value!.isEmpty) return "El teléfono es necesario";
    if (value.length != 10) return "El número debe tener 10 dígitos";
    return null;
  }

  // Validar la repetición de contraseña
  String? validateRepeatPassword(String? value) {
    if (value != passwordCtrl.text) return "Las contraseñas no coinciden";
    return null;
  }

  void save() {
    if (formKey.currentState!.validate()) {
      print("Nombre: ${nameCtrl.text}");
      print("Correo: ${emailCtrl.text}");
      print("Teléfono: ${mobileCtrl.text}");
      print("Contraseña: ${passwordCtrl.text}");

      // Limpiar el formulario después de guardar
      formKey.currentState?.reset();
      nameCtrl.clear();
      emailCtrl.clear();
      mobileCtrl.clear();
      passwordCtrl.clear();
      repeatPassCtrl.clear();
    }
  }
   //codigo que devolvemos
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameCtrl,
            decoration: const InputDecoration(labelText: "Nombre"),
            validator: validateName,
          ),
          TextFormField(
            controller: emailCtrl,
            decoration: const InputDecoration(labelText: "Correo"),
            validator: validateEmail,
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            controller: mobileCtrl,
            decoration: const InputDecoration(labelText: "Teléfono"),
            validator: validatePhone,
            keyboardType: TextInputType.phone,
          ),
          TextFormField(
            controller: passwordCtrl,
            decoration: const InputDecoration(labelText: "Contraseña"),
            obscureText: true,
          ),
          TextFormField(
            controller: repeatPassCtrl,
            decoration: const InputDecoration(labelText: "Repetir contraseña"),
            validator: validateRepeatPassword,
            obscureText: true,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: save,
            child: const Text("Guardar"),
          ),
        ],
      ),
    );
  }
}
