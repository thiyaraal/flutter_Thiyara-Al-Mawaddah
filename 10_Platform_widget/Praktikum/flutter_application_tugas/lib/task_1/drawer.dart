import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    /// fungsi untuk mengaktifkan setiap perpindahan bottom navigasion bar
    Text(
      'Halaman home',
      style: optionStyle,
    ),
    Text(
      'Halaman setting',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color warna = Colors.white;
    return Scaffold(
      backgroundColor: fromCssColor('#303030'),
      appBar: AppBar(
        backgroundColor: fromCssColor('#424242'),
        title: const Text(
          "Material App",
          textAlign: TextAlign.center,
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: fromCssColor('#303030'),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(color: warna),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Setting',
                style: TextStyle(color: warna),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text('this is Material App', style: TextStyle(color: warna)),
      ),
    );
  }
}
