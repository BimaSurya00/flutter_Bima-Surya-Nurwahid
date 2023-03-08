import 'package:flutter/material.dart';

import 'controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('materialApp'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
            width: double.infinity,
            alignment: Alignment.bottomLeft,
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
        ]),
      ),
      body: ListView.builder(
        itemCount: controller.data.length,
        itemBuilder: (context, index) {
          final data = controller.data[index];
          return ListTile(
            title: Text(data['name']),
            subtitle: Text(data['No']),
            leading: CircleAvatar(
              child: Text(data['name'][0]),
            ),
            onTap: () {},
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.red),
        ],
      ),
    );
  }
}
