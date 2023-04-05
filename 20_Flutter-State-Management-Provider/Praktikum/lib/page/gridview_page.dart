import 'package:flutter/material.dart';
import 'package:soal_form/controller/image_controller.dart';
import 'package:soal_form/page/image_page.dart';

class gridviewpage extends StatefulWidget {
  const gridviewpage({Key? key}) : super(key: key);

  @override
  _gridviewpageState createState() => _gridviewpageState();
}

class _gridviewpageState extends State<gridviewpage> {
  int _selectedIndex = -1;

  ImageController _imageController = ImageController();

  void _showBottomSheet(BuildContext context, String url) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Image'),
                            content: Image.network(url),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ImagePage(
                                          url: url,
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text('view detail')),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Close'))
                            ],
                          );
                        });
                  },
                  child: Image.network(
                    url,
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     ElevatedButton(
              //         onPressed: () {
              //           Navigator.of(context).push(MaterialPageRoute(
              //             builder: (context) => ImagePage(
              //               url: url,
              //             ),
              //           ));
              //         },
              //         child: const Text('Yes')),
              //     ElevatedButton(
              //         onPressed: () {
              //           Navigator.of(context).pop();
              //         },
              //         child: const Text('No')),
              //   ],
              // )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid with Bottom Sheet'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: _imageController.dataImage.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
                _showBottomSheet(
                    context, _imageController.dataImage[index].url);
              },
              child: Image.network(
                _imageController.dataImage[index].url,
                width: 20,
                height: 20,
              ));
        },
      ),
    );
  }
}
