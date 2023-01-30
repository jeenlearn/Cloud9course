# Loops
Python has two primitive loop commands:while loops and for loops.

## Key Terminologies

* While loop:With the while loop we can execute a set of statements as long as a condition is true.
* Break statement : With the break statement we can stop the loop even if the while condition is true.
* Continue statement : With the continue statement we can stop the current iteration, and continue with the next.
* Else statement : Else statement in while loop,  we can run a block of code once when the condition no longer is true.

* range() :To loop through a set of code a specified number of times, we can use the range() function,
The range() function returns a sequence of numbers, starting from 0 by default, and increments by 1 (by default), and ends at a specified number.The range() function defaults to 0 as a starting value, however it is possible to specify the starting value by adding a parameter: range(2, 6), which means values from 2 to 6 (but not including 6).The range() function defaults to increment the sequence by 1, however it is possible to specify the increment value by adding a third parameter: range(2, 30, 3)

* For loop : A for loop is used for iterating over a sequence (that is either a list, a tuple, a dictionary, a set, or a string).The for loop does not require an indexing variable to set beforehand.Even strings are iterable objects, they contain a sequence of characters





## Exercise 1

- Create a new script.
- Create a variable x and give it the value 0.
- Use a while loop to print the value of x in every iteration of the loop. After printing, the value of x should increase by 1. The loop should run as long as x is smaller than or equal to 10.



### Sources

* [While loop](https://www.w3schools.com/python/python_while_loops.asp)


### Overcome challenges
 No challenges faced.

 ### Results

Inside the while loop we have a variable increment which increments by 1 and once it reaches 10 it will stop the loop.


![While loop](/00_includes/Python/PRG-04/EX1.png)

## Exercise 2

- Create a new script.
- Copy the code below into your script.
 for i in range(10):
    do something here
- Print the value of i in the for loop. You did not manually assign a value to i. Figure out how its value is determined.
- Add a variable x with value 5 at the top of your script.
- Using the for loop, print the value of x multiplied by the value of i, for up to 50 iterations.




### Sources

* [For loop](https://www.w3schools.com/python/python_for_loops.asp)


### Overcome challenges
 No challenges faced.

 ### Results

The range () function loops through a set of code for a specified number of times as mentioned in the number in the range. By default the loop starts with 0 and increments by 1 till the number given. If you want to loop to run 50 times you can give range (50), as the loop starts from 0 till 49 times as shown in the below screen shot :

![For loop](/00_includes/Python/PRG-04/EX2.png)


If you want to loop from a number you can give the range as range(1,51). Below screeen shot gives that result. This also runs for 50 times from 1 to 50.



![For loop](/00_includes/Python/PRG-04/EX2.1.png)


 



## Exercise 3

- Create a new script.
- Copy the array below into your script.
 arr = ["Coen", "Casper", "Joshua", "Abdessamad", "Saskia"]
- Use a for loop to loop over the array. Print every name individually.





### Sources

* [For loop](https://www.w3schools.com/python/python_for_loops.asp)


### Overcome challenges
 No challenges faced.

 ### Results

For loop can be used to  iterate through an array also in the same way.

![For loop](/00_includes/Python/PRG-04/EX3.png)



