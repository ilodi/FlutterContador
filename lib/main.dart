import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

//Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(child: Text('Hola mundo')),
    );
  }
}
