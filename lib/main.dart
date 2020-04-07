import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Tutorial",
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            "Black Italic",
            textScaleFactor: 1.5,
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "Black only",
            textScaleFactor: 1.5,
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
