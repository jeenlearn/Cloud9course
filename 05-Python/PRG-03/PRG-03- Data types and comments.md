# Data types and comments
 Variables can store data of different types, and different types can do different things.


## Key Terminologies

* Datatypes:Python has the following data types built-in by default, in these categories:

    Text Type:	str
    
    Numeric Types:	int, float, complex

    Sequence Types:	list, tuple, range

    Mapping Type:	dict

    Set Types:	set, frozenset

    Boolean Type:	bool

    Binary Types:	bytes, bytearray, memoryview

    None Type:	NoneType

    You can get the data type of any object by using the type() function

* Comments:Comments in Python are the lines in the code that are ignored by the interpreter during the execution of the program. Comments enhance the readability of the code and help the programmers to understand the code very carefully.   
eg: # Python program to demonstrate comments.

* Input: input() function is used to take user input. By default, it returns the user input in form of a string.



## Exercise 1

- Create a new script.
- Copy the code below into your script.
- Determine the data types of all four variables (a, b, c, d) using a built in function.
- Make a new variable x and give it the value b + d. Print the value of x. This will raise an error. Fix it so that print(x) prints a float.
- Write a comment above every line of code that tells the reader what is going on in your script.


### Sources

* [Datatypes](https://www.w3schools.com/python/python_datatypes.asp)


### Overcome challenges
 No challenges faced.

 ### Results

The builtin function to get the type of data is type().
The comments can be added using the # symbol infront of the comment.

![Datatype](/00_includes/Python/PRG-03/EX1.png)

## Exercise 2

- Create a new script.
- Use the input() function to get input from the user. Store that input in a variable.
- Find out what data type the output of input() is. See if it is different for different kinds of input (numbers, words, etc.).



### Sources

* [Input](https://www.geeksforgeeks.org/python-input-function/)


### Overcome challenges
 No challenges faced.

 ### Results

 The input function allows you to enter data from the terminal.The data type of the data entered from the terminal is by dafult String. so even if you enter numbers it will return the type String.

![Input](/00_includes/Python/PRG-03/EX2.png)



