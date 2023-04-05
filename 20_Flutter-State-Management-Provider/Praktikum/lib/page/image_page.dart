import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String url;
  const ImagePage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Page'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.network(
          url,
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
