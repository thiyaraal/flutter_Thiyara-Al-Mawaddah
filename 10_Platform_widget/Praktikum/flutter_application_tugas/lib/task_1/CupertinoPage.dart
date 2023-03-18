import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class CupertinoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: fromCssColor('#303030'),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: fromCssColor('#424242'),
        middle: Text("Cupertino App", style: TextStyle(color: Colors.white),),
      ),
      child: Center(
        child: Text("This A Cupertino",
            style: TextStyle(color: Colors.white, fontSize: 10)),
      ),
    );
  }
}
