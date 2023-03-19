
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final List<Contact> _contacts = [];

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _submitForm() {
    final String name = _nameController.text;
    final String phone = _phoneController.text;

    setState(() {
      _contacts.add(Contact(name: name, phone: phone));
      _nameController.clear();
      _phoneController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Text(
              'Create New Contacts',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'Insert Your Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Nomor',
                hintText: '+62 ....',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Text(
              'List Contacts',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _contacts.length,
              itemBuilder: (context, index) {
                final Contact contact = _contacts[index];
                return ListTile(
                  title: Text(contact.name),
                  subtitle: Text(contact.phone),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Contact {
  final String name;
  final String phone;

  Contact({
    required this.name,
    required this.phone,
  });
}
