## Flutter Dropdown Button Tutorials

### Let's make a basic dropdown button

Lets make a flutter application and add a scaffold as the home screen as follows

|![Basic home screen code](images/code%201.png)|
|:---:| 
| *Basic home screen code* |

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

As you see the private variable is assigned as **_value** to point and store the current state of the **DropdownButton** widget. The current state of 
the **_value** is changed once the user changed the value of the dropdown and then the function at the **onChange** attribute is triggered. If someone needs 
to change the current status of the variable at the runtime then **setState** function should be changed. Once a value changed all the widgets having that 
value will rerender.Following is the preview of the above code.

![](images/Screenn%202.1.png)


![](images/Screen%202.2.png)

### Let's get dropdown elements from a list

Some cases the dropdown items cannot be hardcoded either it is retrieved form an API or as objects. Let's see how this can be implemented. First lets 
make a simple class to make listItem objects for the dropdown menu.

![](images/Code%203.2.png)

Above class will take value and name as parameters and for the example getter and setters and not implemented since this is for explaining purposes.
First the _dropdownItems ItemList is created using **ItemList** objects and then **builDropDownMenuItems** function the **DropdownMenuItem** list is created. 
When the widget mount using init function which called at first **DropdownButton** item list and the value is set using **_dropdownMenuItems** and 
**_selectedItem** variable. 

|![](images/Code%203.1.png)|
|:-:|
|*Dropdown button using external list code*|

