import 'package:aplication_praktikum11/models/gambar.dart';
import 'package:flutter/material.dart';

class GALERYSCREEN extends StatefulWidget {
  GALERYSCREEN({Key? key}) : super(key: key);

  @override
  State<GALERYSCREEN> createState() => _GALERYSCREENState();
}

class _GALERYSCREENState extends State<GALERYSCREEN> {
  final List _photo = [
    PhotoGalery(name: "Detail", path: 'assets/images/photo_1.jpg'),
    PhotoGalery(name: "Like view", path: 'assets/images/photo_2.jpg'),
    PhotoGalery(name: "Like view", path: 'assets/images/photo_3.jpg'),
    PhotoGalery(name: "Like view", path: 'assets/images/photo_4.jpg'),
    PhotoGalery(name: "Like view", path: 'assets/images/photo_5.jpg'),
    PhotoGalery(name: "Like view", path: 'assets/images/photo_6.jpg'),
    PhotoGalery(name: "Like view", path: 'assets/images/photo_7.jpg'),
    PhotoGalery(name: "Like view", path: 'assets/images/photo_8.jpg'),
    PhotoGalery(name: "Like view", path: 'assets/images/photo_9.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Galery'),
        ),
        body: Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: _photo.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _showBottomSheet(context, _photo[index]);
              },
              child: Image.asset(
                _photo[index].path,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),);
  }
  void _showBottomSheet(BuildContext context, PhotoGalery image) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 300,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  image.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    _showImageDialog(context, image);
                  },
                  child: Image.asset(
                    image.path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // fungsi untuk menampilkan dialog
  void _showImageDialog(BuildContext context, PhotoGalery image) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(image.name),
          content: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(image.path),
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ya'),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/newpage', arguments: image.path);
              },
            ),
            TextButton(
              child: const Text('Tidak'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}


