import 'package:flutter/material.dart';
import 'package:flutter_application_tugas/provider/list_contact_prov.dart';
import 'package:flutter_application_tugas/soal_asset_dialog_bottomsheet_navigation/P1_gridGalery.dart';
import 'package:flutter_application_tugas/soal_from_advance_from_input/soalPrioritas1.dart';
import 'package:flutter_application_tugas/models/models.dart';
// import 'package:flutter_application_tugas/soal_asset_dialog_bottomsheet_navigation/bottomSheet.dart';
// import 'package:flutter_application_tugas/soal_from_advance_from_input/soalPrioritas1.dart';
// import 'package:flutter_application_tugas/soal_platform_widget/CupertinoPage.dart';
// import 'package:flutter_application_tugas/soal_platform_widget/Eksplorasi.dart';
// import 'package:flutter_application_tugas/soal_platform_widget/bottom_navbar.dart';
// import 'package:flutter_application_tugas/soal_platform_widget/drawer.dart';
// import 'package:flutter_application_tugas/soal_platform_widget/list_view.dart';
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

        home:HomePage()
      ),
    );
  }
}
