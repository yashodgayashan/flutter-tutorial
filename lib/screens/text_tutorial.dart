import 'package:flutter/material.dart';

class TextAlignScreen extends StatelessWidget {
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