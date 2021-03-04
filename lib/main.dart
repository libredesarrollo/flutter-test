import 'package:flutter/material.dart';
import 'package:pruebas/widgets/animation1.dart';
import 'package:pruebas/widgets/animation2.dart';
import 'package:pruebas/widgets/animation3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Animaciones',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Animaciones"),
          ),
          body: Container(
            child: Animation3(),
          ),
        ));
  }
}
