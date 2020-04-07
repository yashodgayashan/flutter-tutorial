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
        child: Column(
          children: <Widget>[
            Text(
              "One",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.blue,
                  fontFamily: "Caveat",
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "Two",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.blue,
                  fontFamily: "Caveat",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
