## Flutter Dropdown Button Tutorials

### Let's make a basic dropdown button

Lets make a flutter application and add a scaffold as the home screen as follows

![](images/code%201.png)

StatefulWidgets are the widgets where we can change the values on the interface at runtime and StetelessWidgets are the widgets where the values 
of the interface cannot be changed at the run time. For the example the StatefulWidget is used as we have to change the value on the interface.
Scaffold is used as a background for this example. Following is the preview of the above code.

![](images/screen%201.png)

**Let's add a basic dropdown button to the screen.**

In th following code the **DropdownButton** is wrapped inside a **Container** widget to add padding and there are several widgets you can use to 
add padding to the child **DropdownButton** widget. In **DropdownButton** Widget there are many attributes but for now following attributes are being used.
1. **items** 
    This is where the elements of the **DropdownButton** widget is added as list of **DropdownMenuItem** widgets which are having a **value** attribute, 
    **child** attribute which are using here and some more.
2. **value**
    This is where the pointer which holds the display value of the **DropdownButton** widget.
3. **onChange**
    This is the one of required parameter appart from the items attribute and when user click one of the **DropdownMenuItem** this will trigger and 
    execute the function assigned.

**Following is the basic drop down button example**

![](images/Code%202.png)
