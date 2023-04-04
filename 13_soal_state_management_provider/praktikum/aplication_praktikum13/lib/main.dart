import 'package:aplication_praktikum11/pages/detailPages.dart';
import 'package:aplication_praktikum11/provider/image_provider.dart';
import 'package:aplication_praktikum11/screen/FirstPage.dart';
import 'package:aplication_praktikum11/screen/GaleryPage.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
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


      /// animation route 
      
      home:GALERYSCREEN(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/newpage':
            return PageAnimationTransition(
              page: DetailImage(),
              pageAnimationType: RightToLeftFadedTransition(),
            );
          default:
            return null;
        }
      },

      ////// tanpa transisi
    
      // initialRoute: "/",
      // routes: {
      //   '/': (_) => GALERYSCREEN(),
      //   '/newpage': (context) => DetailImage()
      // },
    );
  }
}
