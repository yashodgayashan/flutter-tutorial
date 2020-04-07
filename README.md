# Flutter Text Widget

Row widget, Column widget, Extended widget, Padding Widget and Container widget are using apart from the Text widget 
for give better understanding about alignment.

## Let's make a basic Text

Let's make a flutter application and add a scaffold as the home screen as follows.

```dart
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
        body:Text("Hi")
    );
  }
}
```

StatefulWidgets are the widgets where we can change the values on the interface at runtime and StatelessWidgets are the 
widgets where the values of the interface cannot be changed at the run time. For the example the StatelessWidget is used 
as we don't have to change the value on the interface. Scaffold is used as a background for this example. Following is the 
preview of the above code.

|![](images/screen%201.png)|
|:-:|
|Preview of the above code|

## Let's add some basic styling

### Align the text

Before align the text you have to make some space because if you align the text and there are no space nothing will happen 
and to align the text you have to use **textAlign** attribute in **Text** widget as follows.

```dart
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
```

|![](images/screen%201.png)|
|:-:|
|Cannot align as there are no space|

Above coding example is not doing anything there is no space to align. Then a **Container** widget is added wrapping **Text** 
widget with some width.

>Quick tip: Getting the screen width

```dart
double width = MediaQuery.of(context).size.width;
```

Following is the code for the text alignment after making some space using **Container** widget.

```dart
Widget build(BuildContext context) {

  double width = MediaQuery.of(context).size.width;

  return Scaffold(
    appBar: AppBar(
      title: Text("Text tutorial"),
    ),
    body: Container(
      width: width,
      child: Text(
        "Hi",
        textAlign: TextAlign.center,
      ),
    ),
  );
}
```

|![](images/screen%202.png)|
|:-:|
|Preview of the above code|

