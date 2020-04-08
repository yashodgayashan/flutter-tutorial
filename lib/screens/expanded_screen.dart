import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded widget"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[300],
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "One",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Two",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[600],
              child: Row(
                children: <Widget>[
                  Text(""),
                  Text("Two"),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: <Widget>[
                  Text("One"),
                  Text("Two"),
                ],
              ),
            ),
          ),
          Text("This is not a expanded widget"),
          Expanded(
            flex: 3,
            child: Container(
              width: width,
              child: Text("Hi"),
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
