import 'package:flutter/material.dart';
import 'package:tugas_14/tugas_14/models/image_model.dart';
import 'package:tugas_14/tugas_14/pages/image_page.dart';
import 'package:tugas_14/tugas_14/screen/GaleryPage.dart';
import 'package:tugas_14/tugas_14/style/image_style.dart';

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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tugas bloc 14',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => GALERYSCREEN(),
        '/newpage': (_) => const DetailImage()
      },
    );
  }
}
