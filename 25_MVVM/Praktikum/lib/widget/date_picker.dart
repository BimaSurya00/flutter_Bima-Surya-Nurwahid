import 'package:flutter/material.dart';

class DatePickerBima extends StatefulWidget {
  const DatePickerBima({super.key});

  @override
  State<DatePickerBima> createState() => _DatePickerBimaState();
}

class _DatePickerBimaState extends State<DatePickerBima> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
