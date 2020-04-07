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

Then you have to update the pubspec.yaml file as follows to add the fonts to the project with the weights indicated in 
the google font site.

```
fonts:
   - family: Caveat
     fonts:
       - asset: fonts/Caveat-Regular.ttf
         weight: 400
       - asset: fonts/Caveat-Bold.ttf
         weight: 700
```

The the following is the sample code to how to add the custom fonts to your project and at there you have to indicate 
the fontWeights along with the fontFamily or else it will pick up the first font file under the font family name in the 
pubspec.yaml file.

```
Text(
  "Hi There",
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.blue,
    fontSize: 20.0,
    fontFamily: "Caveat",
    fontWeight: FontWeight.w700
  ),
Text(
  "This is regular",
  textAlign: TextAlign.center,
  style: TextStyle(
      color: Colors.blue,
      fontSize: 40.0,
      fontFamily: "Caveat",
      fontWeight: FontWeight.w400),
)
```

|![](images/screen%205.png)|
|:-:|
|Preview of the above code|

## Let’s do some alignment

Then the problem arise when you need to add more Text widgets on the screen and for that you have to use Row widget and Column widget 
and there are many more.

### Horizontally add Text widgets

When it comes to add horizontally add more text widget you have to add your Text widgets in an array and wrap them inside a **Row** 
widget as follows.

```
Row(
  children: <Widget>[
    // Add text widgets here
  ]
)
```

As an example lets take following code.

```
Row(
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
```

|![](images/screen%2012.png)|
|:-:|
|Preview of the above code|

But as you see the alignment is not happened as there is no space defined and the following problem will occur when the text exceeds 
the screen size as follows.

|![](images/screen%2013.png)|
|:-:|
|When text exceeds the screen size|

When it come to above problem or if you need to divide the screen in to some ratio you have to use **Expanded** widget.

### Avoids overflow using Expanded widget

When you add expanded widgets into the row the row equally divided and it works as a container and if you need to change the ratio 
you have to change the flex attribute inside the Expanded widget. All the basic alignments are working here.

```
Row(
  children: <Widget>[
    Expanded(
      child: Text(
        "One",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40.0,
            color: Colors.blue,
            fontFamily: "Caveat",
            fontWeight: FontWeight.w700),
      ),
    ),
    Expanded(
      child: Text(
        "Two",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40.0,
            color: Colors.blue,
            fontFamily: "Caveat",
            fontWeight: FontWeight.w700),
      ),
    ),
    Expanded(
      child: Text(
        "This is a big paragraph",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40.0,
            color: Colors.blue,
            fontFamily: "Caveat",
            fontWeight: FontWeight.w700),
      ),
    ),
  ],
),
```

|![](images/screen%2014.png)|
|:-:|
|Equally divided the screen|

### Vertically add Text Widgets

Text widgets can be added vertically using the **Column** widget, **ListView** widget and many more and for basics the 
**Column** widget will be used.

```
Column(
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
```

|![](images/screen%2015.png)|
|:-:|
|Preview of the above code|

## Let’s change text using a button click

For the final section It is good to know how to change a text according to the button click and we need to change a widget at the 
runtime then let’s make a statefulWidget for that and added a private variable and add it to the text field.

### Assign variable to the Text

>Quick tip : Add a variable to text field

```
int _variable = 0
Text("$_variable")
```

In dart language private variables are begin with a _ mark.

```dart
import 'package:flutter/material.dart';

class TextAlignScreen extends StatefulWidget {
  @override
  _TextAlignScreenState createState() => _TextAlignScreenState();
}

class _TextAlignScreenState extends State<TextAlignScreen> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "$_value",
              textScaleFactor: 3.0,
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              child: Text("Click"),
            ),
          ),
        ],
      ),
    );
  }
}
```

In above code the _value private variable is declared to store the integer value and it is added on to 
the Text widget and button have added to the screen as follows.

|![](images/screen%2016.png)|
|:-:|
|Preview of the above code|

### Adding the logic

The logic should be added to the onPressed attribute in the **RaisedButton** widget which will trigger when 
button is pressed. Important factor is if you need to change a variable at runtime you have to change it 
inside the set state function as follows.

```
onPressed: () {
  setState(() {
    _value += 1;
  });
},
```

The _value is increase by one when the button is pressed and the final code is as follows.

```
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Tutorial",
      home: TextAlignScreen(),
    ));

class TextAlignScreen extends StatefulWidget {
  @override
  _TextAlignScreenState createState() => _TextAlignScreenState();
}

class _TextAlignScreenState extends State<TextAlignScreen> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text tutorial"),
      ),
      body: Row(
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
    );
  }
}
```

|![](images/screen%2017.png)|
|:-:|
|Preview of the above code|

Hopefully this is helpful.