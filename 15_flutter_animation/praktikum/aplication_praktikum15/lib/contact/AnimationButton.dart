import 'package:aplication_praktikum11/contact/CreateContact.dart';
import 'package:flutter/material.dart';

class AnimationButton extends StatelessWidget {
  final String text;
  const AnimationButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:  MaterialStateProperty.all<Color>(Color.fromARGB(255, 196, 94, 145),),
        ),
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(seconds: 3),
                transitionsBuilder: (context, animation, animationTime, child) {
                  return ScaleTransition(
                      alignment: Alignment.center,
                      child: child,
                      scale: animation);
                },
                pageBuilder: (context, animation, animationTime) {
                  return CreateContactPage();
                },
              ));
        },
        child: Text(text));
  }
}
