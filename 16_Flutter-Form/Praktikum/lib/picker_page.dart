import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class pickerPage extends StatefulWidget {
  const pickerPage({Key? key});

  @override
  State<pickerPage> createState() => _pickerPageState();
}

class _pickerPageState extends State<pickerPage> {
  DateTime _selectedDate = DateTime.now();
  Color _selectedColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Picker Page'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: Title(
                  color: Colors.blue,
                  child: const Text(
                    'Date Picker',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: ElevatedButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2025),
                    ).then((selectedDate) {
                      if (selectedDate != null) {
                        setState(() {
                          _selectedDate = selectedDate;
                        });
                      }
                    });
                  },
                  child: const Text('Show Date Picker'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text('Selected Date: ${_selectedDate.toString()}'),
          const SizedBox(height: 20),
          Row(children: [
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              child: Title(
                color: Colors.blue,
                child: const Text(
                  'Color Picker',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Select Color'),
                        content: SingleChildScrollView(
                          child: BlockPicker(
                            pickerColor: Colors.blue,
                            onColorChanged: (color) {
                              setState(() {
                                _selectedColor = color;
                              });
                            },
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text('Show Color Picker'),
              ),
            ),
          ]),
          Column(
            children: [
              const SizedBox(height: 20),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: _selectedColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
