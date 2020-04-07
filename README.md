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

### Font size using textScaleFactor

There are two way of adjust the font size one is using the textScaleFactor in **Text** widget or using TextStyle class which will 
be discussed in latter part. textScaleFactor attribute takes a double value which is consider as a scaling factor and scale the 
text as follows.

```
    Text(
      "Hi",
      textAlign: TextAlign.center,
      textScaleFactor: 4.0,
    ),
```

|![](images/screen%203.png)|
|:-:|
|Preview of the above code|
    
### Style using TextStyle class

**Textstyle** class has to be used to add some styling to the fonts and following is the code to add styles to the Text widget.

```
Text(
  "Hi",
  style: TextStyle(
    //code here
  ),
),
```

### Adding text colours

Basic colouring can be done using style attribute and there are some advanced colouring mechanisms which will be discussed 
in another blog post. The **Colors** class can be used for add colours and there are some more methods.

|![](images/screen%204.png)|
|:-:|
|Add colours using **Colors** class|

```
Text(
  "Hi",
  textAlign: TextAlign.center,
  textScaleFactor: 2.0,
  style: TextStyle(
    color: Colors.blue
  ),
),
```

|![](images/screen%206.png)|
|:-:|
|Preview of the above code|

### Adding font weights

Font weights can also be added using the **Textstyle** class as follows.

```
style: TextStyle(
  color: Colors.blue,
  fontWeight: FontWeight.w300,
),
```

Following example will show the preview of adding different font weights to different texts.

|![](images/screen%207.png)|
|:-:|
|Preview of different font weights|

### Changing Font size

Another method to change the font size is adding the fontSize attribute which takes the double value as the input. 
You can use both textScaleFactor and fontSize to change the font size of a text and when you use the both the 
fontSize will be multiplied by the textScaleFactor and set the font size as the outputted answer.

```
Text(
  "Hi",
  textAlign: TextAlign.center,
  textScaleFactor: 2.0,
  style: TextStyle(
    color: Colors.blue,
    fontSize: 20.0
  ),
),
```

|![](images/screen%208.png)|
|:-:|
|Preview of the above code|

### Adding space between letters and words

TextStyle class facilitate both letter spacing and word spacing using two attributes namely letterSpacing and wordSpacing. 
Both attributes take double value as the input.

```
Text(
  "Hi There",
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.w600,
    fontSize: 40.0,
    letterSpacing: 2.0,
    wordSpacing: 100.0,
  ),
),
```

|![](images/screen%209.png)|
|:-:|
|Preview of the above code|

### Adding custom fonts

Before using the custom fonts you have to add them into pubspec.yaml file. I have used the Cavet font in google fonts to this 
tutorial and add a subfolder inside the project folder and add font files files as follows.

|![](images/screen%2010.png)|
|:-:|