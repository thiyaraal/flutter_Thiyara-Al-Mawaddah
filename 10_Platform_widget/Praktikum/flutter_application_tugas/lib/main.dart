import 'package:flutter/material.dart';
import 'package:flutter_application_tugas/provider/list_contact_prov.dart';
import 'package:flutter_application_tugas/task2_untuk%20minggu%20depan/soalPrioritas1.dart';
import 'package:flutter_application_tugas/task_1/CupertinoPage.dart';
import 'package:flutter_application_tugas/task_1/Eksplorasi.dart';
import 'package:flutter_application_tugas/task_1/bottom_navbar.dart';
import 'package:flutter_application_tugas/task_1/drawer.dart';
import 'package:flutter_application_tugas/task_1/list_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ContactProvider())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:BotttomNavbarPage()
      ),
    );
  }
}
