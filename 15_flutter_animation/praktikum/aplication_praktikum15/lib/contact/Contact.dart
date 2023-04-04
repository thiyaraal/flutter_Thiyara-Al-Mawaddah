import 'package:aplication_praktikum11/contact/headerPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AnimationButton.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
   SizedBox tinggi = SizedBox(height: 10,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('Contact'),
          actions: const [
            Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.search),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: const Color.fromARGB(255, 196, 94, 145),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Column(
                  children: [
                    HeaderScreen(),
                    AnimationButton(text: 'Create Contact'),
                     tinggi,
                      Divider(),
                      tinggi,
                    // SizedBox(
                    //     height: 350,
                    //     width: 400,
                    //     child: Image.asset('assets/images/contact.jpg')),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // Text(
                    //   'see all the friends in your contacts and add your new friends right now',
                    //   style: GoogleFonts.poppins(
                    //       textStyle: const TextStyle(fontSize: 12)),
                    // ),
                    // AnimationButton(text: "Create Contact"),
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
      leading: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 196, 94, 145),
          child: Text(labelavatar)),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
