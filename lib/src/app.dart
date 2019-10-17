import 'package:flutter/material.dart';
import './pages/home_pages.dart';

//Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(child: HomePage()),
    );
  }
}
