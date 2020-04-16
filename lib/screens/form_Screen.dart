import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic form"),
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'UserName',
                  hintText: "YashodPerera",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'email',
                  hintText: "yashodperera@yahoo.com",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
