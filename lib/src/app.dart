import 'package:flutter/material.dart';
import './pages/contador_page.dart';

//Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: ContadorPage()),
    );
  }
}
