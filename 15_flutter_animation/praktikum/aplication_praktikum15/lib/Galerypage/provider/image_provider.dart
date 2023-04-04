import 'package:aplication_praktikum11/Galerypage/models/gambar.dart';
import 'package:aplication_praktikum11/Galerypage/pages/detailPages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemImageProvider extends ChangeNotifier {
  final List<PhotoGalery> _photo = [
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

  List<PhotoGalery> get photo => _photo;
  void showBottomSheet({
    required BuildContext context,
    required int index,
    required ItemImageProvider itemImageProvider,
  }) {
    showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                itemImageProvider.photo[index].name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    _showImageDialog(
                      context: context,
                      index: index,
                      itemImageProvider: itemImageProvider,
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Image.asset(
                      itemImageProvider.photo[index].path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showImageDialog({
    required BuildContext context,
    required int index,
    required ItemImageProvider itemImageProvider,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(itemImageProvider.photo[index].name),
          content: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(itemImageProvider.photo[index].path),
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                // Navigator.of(context).pop();
                // Navigator.of(context).pushNamed('/newpage',
                //     arguments: itemImageProvider.photo[index].path);

                // /contoh;
                Navigator.of(context, rootNavigator: true).pushNamed('/newpage',
                    arguments: DetailArguments(
                        judul: itemImageProvider.photo[index].name,
                        link: itemImageProvider.photo[index].path));
              },
            ),
            TextButton(
              child: const Text('No'),
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
