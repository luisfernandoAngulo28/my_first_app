import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';

// Clase principal del formulario de inicio de sesión
class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginFormState();
}

// Estado del formulario
class LoginFormState extends State<LoginForm> {
  // Clave global para identificar el formulario y validar los campos
  GlobalKey<FormState> formKey = GlobalKey();

  // Controladores para capturar la entrada del usuario en los campos de texto
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center( // Centra el contenido en la pantalla
      child: SingleChildScrollView( // Permite hacer scroll si el contenido es grande
        padding: EdgeInsets.all(30), // Agrega margen interno alrededor del formulario
        child: Form(
          key: formKey, // Asigna la clave global al formulario
          child: Column(
            children: [
              // Texto que representa el título del formulario
              Text(
                "Codigo ON",
                style: TextStyle(
                  fontSize: 40, // Tamaño de la fuente
                  letterSpacing: 10, // Espaciado entre letras
                  fontFamily: "Teko", // Fuente personalizada
                  color: Colors.blueGrey, // Color del texto
                ),
              ),

              // Sección con iconos superpuestos
              Stack(
                children: [
                  // Primer icono (fondo)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(
                      Icons.my_library_music,
                      color: Colors.pink[100],
                      // color: Color(0xFF57487F),
                      size: 170,
                    ),
                  ),
                  // Segundo icono encima del primero
                  Icon(
                    Icons.library_music_outlined,
                    color: Colors.blueGrey,
                    size: 170,
                  ),
                ],
              ),

              // Campo de entrada para el correo
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20), // Espaciado vertical
                child: TextFormField(
                  controller: emailCtrl, // Controlador del campo
                  decoration: decoration("Correo", Icons.email_outlined), // Decoración personalizada
                  validator: (value) {
                    String pattern =
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                    RegExp regExp = new RegExp(pattern);

                    if (value?.isEmpty ?? true) {
                      return "El email es necesario";
                    } else if (!regExp.hasMatch(value.toString())) {
                      return "Correo inválido";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress, // Tipo de teclado para correos
                ),
              ),

              // Campo de entrada para la contraseña
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20), // Espaciado vertical
                child: TextFormField(
                  controller: passwordCtrl, // Controlador del campo
                  decoration: decoration("Contraseña", Icons.lock_outline), // Decoración personalizada
                  obscureText: true, // Oculta el texto para contraseñas
                ),
              ),

              // Enlace de "¿Olvidaste tu contraseña?"
              Padding(
                padding: EdgeInsets.only(bottom: 50), // Espaciado en la parte inferior
                child: Align(
                  alignment: Alignment.centerRight, // Alineado a la derecha
                  child: RichText(
                    text: TextSpan(
                      text: "¿Olvidaste tu contraseña? ",
                      style: TextStyle(color: Colors.blueGrey),
                      children: [
                        TextSpan(
                          text: "Recuperarla",
                          style: TextStyle(
                            color: Colors.pink[100],
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline, // Subrayado
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Botón de guardar
              SizedBox(
                width: double.infinity, // Botón ocupa todo el ancho disponible
                height: 40, // Altura del botón
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 4, // Sombra del botón
                    backgroundColor: Colors.pink[100], // Color de fondo
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)), // Bordes redondeados
                    ),
                  ),
                  onPressed: save,
                  child: Text("Guardar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para generar la decoración de los TextFormField
  decoration(String text, IconData icon) {
    return InputDecoration(
      labelText: text, // Texto del campo
      prefixIcon: Icon(icon, color: Colors.pink[100]), // Icono en el campo de texto
      labelStyle: TextStyle(color: Colors.blueGrey), // Estilo del texto de etiqueta
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink.withOpacity(0.3), width: 1), // Borde cuando está inactivo
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink.withOpacity(0.3), width: 1), // Borde cuando está activo
      ),
    );
  }

  // Método para validar y limpiar el formulario
  save() {
    if (formKey.currentState!.validate()) {
      print("Correo ingresado: ${emailCtrl.text}");

      formKey.currentState?.reset(); // Resetea los campos después de guardar
      emailCtrl.clear();
      passwordCtrl.clear();

    }
  }
}
