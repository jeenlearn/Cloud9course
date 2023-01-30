# Conditions
Python supports the usual logical conditions from mathematics:

- Equals: a == b
- Not Equals: a != b
- Less than: a < b
- Less than or equal to: a <= b
- Greater than: a > b
- Greater than or equal to: a >= b

## Key Terminologies

* If statement :The if statement executes a block of code when a condition is met. It is usually used with the else keyword, which runs a block if the condition in the if statement is not met.
* Indentation : Python relies on indentation (whitespace at the beginning of a line) to define scope in the code. Other programming languages often use curly-brackets for this purpose.
* AND : The and keyword is a logical operator, and is used to combine conditional statements. Both conditions have to be true to go inside the if statement
* OR : The or keyword is a logical operator, and is used to combine conditional statements One of the condition can be true to go inside the if statement.
* Pass :if statements cannot be empty, but if you for some reason have an if statement with no content, put in the pass statement to avoid getting an error.
* Nested If : You can have if statements inside if statements, this is called nested if statements.




## Exercise 1

- Create a new script.
- Use the input() function to ask the user of your script for their name. If the name they input is your name, print a personalized welcome message. If not, print a different personalized message.



### Sources

* [If with strings](https://www.delftstack.com/howto/python/if-with-string-in-python/)
* [IF else if ](https://www.tutorialspoint.com/python/python_if_else.htm)
* [If Else](https://www.w3schools.com/python/python_conditions.asp)


### Overcome challenges
 No challenges faced.

 ### Results

You use the input function to ask the user to input the name in the terminal. Once the user input the name check it in the if statement and give give an output when the condition is statisfied and another output if the condition is not satisfied.



![If Condition](/00_includes/Python/PRG-05/EX1.png)

## Exercise 2

- Create a new script.
- Ask the user of your script for a number. Give them a response based on whether the number is higher than, lower than, or equal to 100.
- Make the game repeat until the user inputs 100.





### Sources


* [While True](https://www.geeksforgeeks.org/how-to-use-while-true-in-python/)

### Overcome challenges
 No challenges faced.

 ### Results

For checking these condition you can have if , elif and else and can make the approriate conditions in each and give the appropriate message. To continue this loop till the user inputs 100, we can use a while loop on top of the if condition, so the while loop will go one till the variable int he while loop is not equal to 100, once the user enter 100 , inside the else condition the loop variable is made to 100 so that , the loop exists and the program ends.

The below screen shows the if ,elif and else conditons for each time when the program is run.

![If else](/00_includes/Python/PRG-05/EX2.png)


If you want the user input to be given till the user enter 100, we can use the below code :



![If else with loop](/00_includes/Python/PRG-05/EX2.1.png)

