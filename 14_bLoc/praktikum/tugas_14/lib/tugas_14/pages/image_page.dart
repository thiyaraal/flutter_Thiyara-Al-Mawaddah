import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    final String path =
        ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' Detail Image'),
      ),
      body: Center(
        child: Image.asset(path),
      ),
    );
  }
}
