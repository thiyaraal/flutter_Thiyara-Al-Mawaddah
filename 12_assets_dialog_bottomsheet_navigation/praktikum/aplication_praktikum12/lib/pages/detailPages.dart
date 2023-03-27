import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String path =
 ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text("back")),
      body: Padding(padding: EdgeInsets.all(20),
      child: Image.asset(path)),
    );
  }
}