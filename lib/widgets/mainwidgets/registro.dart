import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Registro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: "Aqui va tu nombre",
            labelText: "Nombre"
          )
          
        )
      ),
    );
  }
}