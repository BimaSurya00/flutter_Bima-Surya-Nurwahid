import 'package:flutter/material.dart';
import 'package:soal_form/page/gridview_page.dart';
import 'package:soal_form/widget/color_picker.dart';
import 'package:soal_form/widget/date_picker.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({super.key, required this.data});
  final String data;

  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Picker Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const GridViewPage();
            },
          ));
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
      body: Column(
        children: [
          const DatePickerBima(),
          const SizedBox(height: 20),
          const ColorPickerBima(),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Title(
                  color: Colors.blue,
                  child: const Text(
                    'File Picker',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Show File Picker'),
                ),
              ),
            ],
          ),
          Text(widget.data),
        ],
      ),
    );
  }
}
