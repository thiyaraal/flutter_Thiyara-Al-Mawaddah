import 'package:aplication_praktikum11/contact/AnimationButton.dart';
import 'package:aplication_praktikum11/contact/Contact.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 250,
                  width: 300,
                  child: Image.asset('assets/images/contact.jpg')),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Welcome Thiyaraal',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 196, 94, 145),
                        fontSize: 18),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'All of these are your friends contact lists, lets add your friends by selecting the create contact button below.',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 12)),
              ),

            ],
          ));
  }
}