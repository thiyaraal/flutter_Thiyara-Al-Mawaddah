import 'package:aplication_praktikum11/contact/headerPage.dart';
import 'package:aplication_praktikum11/Galerypage/pages/detailPages.dart';
import 'package:aplication_praktikum11/Galerypage/provider/image_provider.dart';
import 'package:aplication_praktikum11/contact/Contact.dart';
import 'package:aplication_praktikum11/Galerypage/screen/GaleryPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ItemImageProvider>(
          create: (_) => ItemImageProvider())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactPage()

      // route 


      // initialRoute: "/",
      // routes: {
      //   '/': (_) => GALERYSCREEN(),
      //   '/newpage': (context) => DetailImage()
      // },
    );
  }
}
