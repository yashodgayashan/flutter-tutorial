import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Tutorial",
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dropdown Button"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("First Item"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Second Item"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("Third Item"),
                  value: 3
                ),
                DropdownMenuItem(
                    child: Text("Fourth Item"),
                    value: 4
                )
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
        ));
  }
}


