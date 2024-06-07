import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pruebas/widgets/mainwidgets/principal.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: "Pruebas",
        theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Principal()
      )
    );
  }
}
