import 'package:flutter/material.dart';
import 'package:praktikum_11/screen/Advance_from.dart';
import 'package:praktikum_11/screen/soal_from.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advance User Input',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FieldText()
    );
  }
}

