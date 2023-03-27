import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class BotttomNavbarPage extends StatefulWidget {
  const BotttomNavbarPage({Key? key}) : super(key: key);

  @override
  State<BotttomNavbarPage> createState() => _BotttomNavbarPageState();
}

class _BotttomNavbarPageState extends State<BotttomNavbarPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    /// fungsi untuk mengaktifkan setiap perpindahan bottom navigasion bar
    Text(
      'Halaman Home',
      style: optionStyle,
    ),
    Text(
      'Halaman Setting',
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
      body:
          ///// tampilan sesuai task
          Center(
        child: Text('this is material App',
            style: TextStyle(
              color: warna,
            )),
      ),
      // tampilan jika bottom navigasion nya berfungsi gunakan center dengan chilld _widgetOptions.elementAt(_selectedIndex)
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: fromCssColor('#303030'),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
