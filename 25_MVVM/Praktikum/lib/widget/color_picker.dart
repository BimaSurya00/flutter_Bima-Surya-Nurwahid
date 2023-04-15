import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerBima extends StatefulWidget {
  const ColorPickerBima({super.key});

  @override
  State<ColorPickerBima> createState() => _ColorPickerBimaState();
}

class _ColorPickerBimaState extends State<ColorPickerBima> {
  Color _selectedColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
