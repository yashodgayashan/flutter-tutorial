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
      body: Text(
        "Hi",
        textAlign: TextAlign.center,
      ),
    );
  }
}
