import 'package:flutter/material.dart';
import 'package:soal_form/page/image_page.dart';
import 'package:soal_form/provider/photos_provider.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  late PhotosProvider _photosProvider;

  @override
  void initState() {
    super.initState();
    _photosProvider = PhotosProvider();
  }

  void _showBottomSheet(BuildContext context, String url) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 10),
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
                              child: const Text('view detail'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Image.network(
                    url,
                    width: 70,
                    height: 70,
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
        itemCount: _photosProvider.dataImage.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _showBottomSheet(context, _photosProvider.dataImage[index].url);
            },
            child: Image.network(
              _photosProvider.dataImage[index].url,
              width: 20,
              height: 20,
            ),
          );
        },
      ),
    );
  }
}
