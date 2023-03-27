import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedBox tinggi = SizedBox(height: 10);
    return Column(
      children: [
        Icon(Icons.phone),
                tinggi,
                Text(
                  'Create New Contact',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        letterSpacing: .5, fontSize: 20, color: Colors.teal),
                  ),
                ),
                tinggi,
                const Text(
                    'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. '),
                const Divider(),
      ],
    );
  }
}