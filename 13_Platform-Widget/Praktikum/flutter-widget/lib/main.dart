import 'package:flutter/material.dart';
import 'package:latihan_/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(),
      theme: ThemeData.dark(),
    );
  }
}
