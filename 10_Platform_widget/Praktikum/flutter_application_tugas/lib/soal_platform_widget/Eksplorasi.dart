import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class EksplorasiPage extends StatefulWidget {
  const EksplorasiPage({Key? key}) : super(key: key);

  @override
  State<EksplorasiPage> createState() => _EksplorasiPageState();
}

class _EksplorasiPageState extends State<EksplorasiPage> {
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
      appBar: AppBar(
        backgroundColor: fromCssColor('#6200EE'),
        actions: <Widget>[Icon(Icons.search)],
        title: const Text(
          "My Flutter App",
          textAlign: TextAlign.end,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            listLearn(text: 'Learn Flutter'),
            listLearn(text: 'Learn ReactJS'),
            listLearn(text: 'Learn Flutter'),
            listLearn(text: 'Learn VueJS'),
            listLearn(text: 'Learn Tailwind CSS'),
            listLearn(text: 'Learn UI/UX'),
            listLearn(text: 'Learn Figma'),
            listLearn(text: 'Learn Digital Marketing'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: fromCssColor('#6200EE'),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: fromCssColor('#03DAC5'),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }

///pemanggilan fungsi untuk list learn
  Widget listLearn({
    required String text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider()
      ],
    );
  }
}
