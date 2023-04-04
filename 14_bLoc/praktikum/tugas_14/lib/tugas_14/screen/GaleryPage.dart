import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_14/tugas_14/bloc/photos_bloc.dart';
import 'package:tugas_14/tugas_14/models/image_model.dart';
import 'package:tugas_14/tugas_14/pages/image_page.dart';
import 'package:tugas_14/tugas_14/style/image_style.dart';

class GALERYSCREEN extends StatefulWidget {
  final List<PhotoGalery> photo = [
  PhotoGalery(name: 'likeview', path: photo1),
  PhotoGalery(name: 'likeview', path: photo2),
  PhotoGalery(name: 'likeview', path: photo3),
  PhotoGalery(name: 'likeview', path: photo4),
  PhotoGalery(name: 'likeview', path: photo5),
  PhotoGalery(name: 'likeview', path: photo6),
  PhotoGalery(name: 'likeview', path: photo7),
  PhotoGalery(name: 'likeview', path: photo8),
  PhotoGalery(name: 'likeview', path: photo9)
];

  GALERYSCREEN({Key? key}) : super(key: key);

  @override
  State<GALERYSCREEN> createState() => _GALERYSCREENState();
}

class _GALERYSCREENState extends State<GALERYSCREEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Galery'),
        ),
        body: BlocProvider<PhotosBloc>(
          create: (context) => PhotosBloc(),
          child:
              BlocBuilder<PhotosBloc, PhotosState>(builder: (context, state) {
            BlocProvider.of<PhotosBloc>(context).add(FetchImagePhotosEvent());
            if (state is PhotosSuccessLoaded) {
              return Material(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: state.images.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _showBottomSheet(context, state.images[index]);
                      },
                      child: Image.asset(
                        state.images[index].path,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              );
            } else {
              return Container();
            }
          }),
        ));
  }

  // fungsi untuk menampilkan bottomsheet
  void _showBottomSheet(BuildContext context, PhotoGalery image) {
    showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        closePage();
                      },
                      icon: const Icon(Icons.close_rounded),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      image.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
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
              SizedBox(height: 24)
            ],
          ),
        );
      },
    );
  }

  void closePage() {
    Navigator.pop(context);
  }

  // fungsi untuk menampilkan dialog
  void _showImageDialog(BuildContext context, PhotoGalery image) {
    closePage();
    showDialog(
      barrierDismissible: false,
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
              child: const Text('Yes'),
              onPressed: () {
                closePage();
                Navigator.of(context)
                    .pushNamed('/newpage', arguments: image.path);
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
