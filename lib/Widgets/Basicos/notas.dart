import 'package:flutter/material.dart';
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //aqui los metodos

  TextEditingController _controller = TextEditingController();
  void saludar() {
    var edad = int.tryParse(_controller.text);
    print(edad);
    if (edad != null) {
      if (edad >= 18) {
        print('Hola, eres mayor de edad');
      } else {
        print('Hola, eres menor de edad');
      }
    } else {
      print('Edad no válida');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demoo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Edad',
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: saludar,
                child: const Text('Saludar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

*/
