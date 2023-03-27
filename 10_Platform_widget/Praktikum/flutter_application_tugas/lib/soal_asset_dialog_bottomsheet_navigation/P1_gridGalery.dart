import 'package:flutter/material.dart';

class GaleryPage extends StatefulWidget {
  GaleryPage({Key? key}) : super(key: key);

  @override
  State<GaleryPage> createState() => _GaleryPageState();
}

class _GaleryPageState extends State<GaleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Material App",
            textAlign: TextAlign.center,
          ),
          elevation: 0,
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 16,mainAxisSpacing: 16),
                children: [
                  Image.network('https://picsum.photos/250?image=1'),
                  Image.network('https://picsum.photos/250?image=2'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=3'),
                ])));
  }
}
