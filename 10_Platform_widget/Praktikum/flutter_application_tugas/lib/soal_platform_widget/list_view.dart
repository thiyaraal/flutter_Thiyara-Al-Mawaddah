import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class PageListView extends StatefulWidget {
  const PageListView({Key? key}) : super(key: key);
  @override
  State<PageListView> createState() => _PageListViewState();
}

class _PageListViewState extends State<PageListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: fromCssColor('#303030'),
          title: const Text('ListView'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Column(
                  children: [
                    listtilewidget(
                        labelavatar: 'L',
                        title: 'Leanne Graham',
                        subtitle: '1-770-736-8031 x56442'),
                    listtilewidget(
                        labelavatar: 'E',
                        title: 'Ervin Howell',
                        subtitle: '010-692-6593 x09125'),
                    listtilewidget(
                        labelavatar: 'C',
                        title: 'Clementine Bauch',
                        subtitle: '1-463-123-4447'),
                    listtilewidget(
                        labelavatar: 'P',
                        title: 'Patricia Lebsack',
                        subtitle: '493-170-9623x156'),
                    listtilewidget(
                        labelavatar: 'C',
                        title: 'Chelsey Dietrich',
                        subtitle: '(254)954-1289'),
                    listtilewidget(
                        labelavatar: 'M',
                        title: 'Mrs. Dennis Schulist',
                        subtitle: '1-477-935-8478x6430'),
                    listtilewidget(
                        labelavatar: 'K',
                        title: 'Kurtis Weissnat',
                        subtitle: '210.067.6132'),
                    listtilewidget(
                        labelavatar: 'P',
                        title: 'Patricia Lebsack',
                        subtitle: '493-170-9623x156'),
                    listtilewidget(
                        labelavatar: 'C',
                        title: 'Chelsey Dietrich',
                        subtitle: '(254)954-1289'),
                    listtilewidget(
                        labelavatar: 'M',
                        title: 'Mrs. Dennis Schulist',
                        subtitle: '1-477-935-8478x6430'),
                    listtilewidget(
                        labelavatar: 'K',
                        title: 'Kurtis Weissnat',
                        subtitle: '210.067.6132'),
                  ],
                )
              ],
            )));
  }


///pemanggilan function widget Listtile
  Widget listtilewidget({
    required String labelavatar,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading:
          CircleAvatar(backgroundColor: Colors.green, child: Text(labelavatar)),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
