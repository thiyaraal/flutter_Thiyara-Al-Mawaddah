import 'package:aplication_praktikum11/screen/GaleryPage.dart';
import 'package:aplication_praktikum11/screen/contact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coba'),
      ),
      body: Column(children: [
        GestureDetector(
            onTap: () {
              Get.to(() => const ContactPage(), transition: Transition.zoom);
            },
            child: Text('qq')),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 3),
                    transitionsBuilder:
                        (context, animation, animationTime, child) {
                      return ScaleTransition(
                          alignment: Alignment.center,
                          child: child,
                          scale: animation);
                    },
                    pageBuilder: (context, animation, animationTime) {
                      return  ContactPage();
                    },
                  ));
                  
            },
            child: Text("Add Contact")),
      ]),
    );
  }
}
