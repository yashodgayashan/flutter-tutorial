import 'package:flutter/material.dart';

class TextAlignScreen extends StatefulWidget {
  @override
  _TextAlignScreenState createState() => _TextAlignScreenState();
}

class _TextAlignScreenState extends State<TextAlignScreen> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            "This is a basic Text",
          ),
          Container(
            width: width,
            child: Text(
              "Text with alignment and scale",
              textAlign: TextAlign.right,
              textScaleFactor: 2.0,
            ),
          ),
          Text(
            "text with styling",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w700,
              fontSize: 40.0,
              letterSpacing: 2.0,
              wordSpacing: 20.0,
                fontFamily: "Caveat",
            ),
          ),
          Text(
            "text with styling",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w400,
              fontSize: 40.0,
              letterSpacing: 2.0,
              wordSpacing: 20.0,
              fontFamily: "Caveat",
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "$_value",
                  textScaleFactor: 3.0,
                ),
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _value += 1;
                    });
                  },
                  child: Text("Click"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
