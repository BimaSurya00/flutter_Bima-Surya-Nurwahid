import 'package:flutter/material.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Container(
        child: Column(
          children: const [
            Text('Create New Contact'),
            Text('Daftar kontak'),
          ],
        ),
      ),
    );
  }
}