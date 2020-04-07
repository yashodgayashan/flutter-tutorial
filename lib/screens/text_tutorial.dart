import 'package:flutter/material.dart';

class TextAlignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Container(
        width: width,
        child: Text(
          "Hi There",
          textAlign: TextAlign.center,
          textScaleFactor: 2.0,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
            letterSpacing: 2.0,
            wordSpacing: 100.0,
          ),
        ),
      ),
    );
  }
}
