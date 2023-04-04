import 'package:aplication_praktikum11/models/gambar.dart';
import 'package:aplication_praktikum11/pages/detailPages.dart';
import 'package:aplication_praktikum11/provider/image_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GALERYSCREEN extends StatefulWidget {
  GALERYSCREEN({Key? key}) : super(key: key);

  @override
  State<GALERYSCREEN> createState() => _GALERYSCREENState();
}

class _GALERYSCREENState extends State<GALERYSCREEN> {
  @override
  Widget build(BuildContext context) {
    final itemImageProvider = Provider.of<ItemImageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Galery'),
      ),
      body: Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: itemImageProvider.photo.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                itemImageProvider.showBottomSheet(
                  context: context,
                  index: index,
                  itemImageProvider: itemImageProvider,
                );
              },
              child: Image.asset(
                itemImageProvider.photo[index].path,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
