import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:praktikum17/P2Gambar/imageService.dart';

class FirstScreenImage extends StatefulWidget {
  FirstScreenImage({Key? key}) : super(key: key);

  @override
  State<FirstScreenImage> createState() => _FirstScreenImageState();
}

class _FirstScreenImageState extends State<FirstScreenImage> {
  TextEditingController _nameController = TextEditingController();
  String image = "";

  @override
  void deactivate() {
    _nameController.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image.isNotEmpty
              ? SvgPicture.string(
                  image,
                  height: 200,
                  width: 300,
                )
              : Text('Cari gambar sesuai dengan nama'),
              SizedBox(height: 20,),
          Padding(
              padding: EdgeInsetsDirectional.all(
                8.0,
              ),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
              
                  hintText: "name",
                ),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple),
              onPressed: () async {
                image =
                    await ImageService().generateImage(_nameController.text);
                print(image);
                setState(() {});
              },
              child: Text(
                "GENERATE",
                style: TextStyle(fontSize: 16),
              ))
        ],
      ),
    );
  }
}
