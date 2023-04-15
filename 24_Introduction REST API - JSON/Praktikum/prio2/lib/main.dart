import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MaterialApp(
      home: DiceBearImageApp(),
    ));

class DiceBearImageApp extends StatefulWidget {
  const DiceBearImageApp({Key? key}) : super(key: key);

  @override
  _DiceBearImageAppState createState() => _DiceBearImageAppState();
}

class _DiceBearImageAppState extends State<DiceBearImageApp> {
  String imageUrl = '';

  Future<void> fetchImage() async {
    final response = await http
        .get(Uri.parse('https://avatars.dicebear.com/api/male/example.svg'));
    if (response.statusCode == 200) {
      setState(() {
        imageUrl = response.body;
      });
    } else {
      throw Exception('Failed to fetch image');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DiceBear API')),
      body: Center(
        child: imageUrl.isEmpty
            ? const CircularProgressIndicator()
            : SvgPicture.string(
                imageUrl,
                width: 200,
                height: 200,
              ),
      ),
    );
  }
}
