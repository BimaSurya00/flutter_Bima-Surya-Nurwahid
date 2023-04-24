import 'package:flutter/material.dart';
import 'package:uitesting/home_page.dart';

void main() {
  runApp(const MyApp(home: MyHomePage()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required MyHomePage home});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
