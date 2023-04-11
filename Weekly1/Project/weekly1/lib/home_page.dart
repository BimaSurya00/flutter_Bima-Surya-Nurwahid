import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final msgController = TextEditingController();

  String name = '';
  String email = '';
  String msg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 230,
            child: Stack(
              children: [
                const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://i.pinimg.com/564x/17/76/50/17765073d4bc100c0c590ea8e3709054.jpg',
                  ),
                ),
                Positioned(
                  left: 10,
                  right: 10,
                  top: 50,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Hello perkenalkan nama saya Bima Surya Nurwahid, Selamat datang di aplikasi saya, aplikasi ini dibuat untuk memenuhi tugas weekly 1 dari Alterra Academy, aplikasi ini dibuat menggunakan flutter dan dart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 120,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Column(
              children: const [
                Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Need to get in touch with us? Either fill out the form with your inquiry or find the department you like to contact below.',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ),
          Container(
            height: 500,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Name'),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      fillColor: Colors.grey[300],
                      filled: true),
                ),
                const SizedBox(height: 20),
                const Text('Email'),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      fillColor: Colors.grey[300],
                      filled: true),
                ),
                const SizedBox(height: 20),
                const Text('What we can help you with?'),
                TextField(
                  controller: msgController,
                  minLines: 3,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      fillColor: Colors.grey[300],
                      filled: true),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        name = nameController.text;
                        email = emailController.text;
                        msg = msgController.text;

                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Column(
                              children: [
                                Text(name),
                                Text(email),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
   // Container(
                  //   height: 120,
                  //   padding: EdgeInsets.all(10),
                  //   margin: EdgeInsets.all(10),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         'Contact Us',
                  //         style: TextStyle(
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.black),
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Text(
                  //         'Need to get in touch with us? Either fill out the form with your inquiry or find the department you like to contact below.',
                  //         style: TextStyle(color: Colors.black, fontSize: 15),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   height: 500,
                  //   padding: EdgeInsets.all(10),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       const Text('Name'),
                  //       TextField(
                  //         controller: nameController,
                  //         decoration: InputDecoration(
                  //             border: const OutlineInputBorder(),
                  //             fillColor: Colors.grey[300],
                  //             filled: true),
                  //       ),
                  //       const SizedBox(height: 20),
                  //       const Text('Email'),
                  //       TextField(
                  //         controller: emailController,
                  //         decoration: InputDecoration(
                  //             border: const OutlineInputBorder(),
                  //             fillColor: Colors.grey[300],
                  //             filled: true),
                  //       ),
                  //       const SizedBox(height: 20),
                  //       const Text('What we can help you with?'),
                  //       TextField(
                  //         controller: msgController,
                  //         minLines: 3,
                  //         keyboardType: TextInputType.multiline,
                  //         maxLines: null,
                  //         decoration: InputDecoration(
                  //             border: const OutlineInputBorder(),
                  //             fillColor: Colors.grey[300],
                  //             filled: true),
                  //       ),
                  //       const SizedBox(height: 20),
                  //       ElevatedButton(
                  //         onPressed: () {
                  //           setState(
                  //             () {
                  //               name = nameController.text;
                  //               email = emailController.text;
                  //               msg = msgController.text;

                  //               showDialog(
                  //                 context: context,
                  //                 builder: (context) => AlertDialog(
                  //                   title: Column(
                  //                     children: [
                  //                       Text(name),
                  //                       Text(email),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               );
                  //             },
                  //           );
                  //         },
                  //         child: const Text('Submit'),
                  //       ),
                  //     ],
                  //   ),
                  // ),
