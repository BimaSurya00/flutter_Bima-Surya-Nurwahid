import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soal_form/page/home_page.dart';
import 'package:soal_form/provider/photos_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PhotosProvider>(
          create: (_) => PhotosProvider(), 
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
