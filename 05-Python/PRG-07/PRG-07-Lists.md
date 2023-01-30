# Lists
You can declare a list of values in a single variable. A list is represented by square brackets  [ ], and each value is separated by a comma.

Each position in a list has a number associated with it called the index. Indexes start at 0, so the first item in a list will have the index 0. The second item will have index 1, etc. You can call individual items in a list by calling its index.

You can loop over a list using a for loop. 


## Key Terminologies



## Exercise 1

- Create a new script.
- Create a variable that contains a list of five names.
- Loop over the list using a for loop. Print every individual name in the list on a new line.



### Sources

* [List](https://www.w3schools.com/python/python_lists.asp)
* [Lists 2](https://www.javatpoint.com/python-lists)



### Overcome challenges
 No challenges faced.

 ### Results

 ### Code
  ```python
nameList = ["Jeena","Aarav","Avyaan","Gokul"]
for i in nameList:
    print(i)
 ```
Use a for loop to loop through the list and print the items.


![Print names in the list](/00_includes/Python/PRG-07/EX1.png)

## Exercise 2
- Create a new script.
- Create a list of five integers.
- Use a for loop to do the following for every item in the list:
- Print the value of that item added to the value of the next item in the list. If it is the last item, add it to the value of the first item instead (since there is no next item).







### Sources


 

* [Last item in list](https://www.geeksforgeeks.org/python-how-to-get-the-last-element-of-list/)

### Overcome challenges
 No challenges faced.

 ### Results

 ### Code
 ```python
numList=[4,6,3,5,10,10]
print("My List is "+str(numList))
for i in range(0, len(numList)):
    if(i == (len(numList)-1)):
        print(numList[i]+numList[0])
    else:
        print(numList[i]+numList[i+1])
 ```

Loop through the list from 0 to len() of the list and if its the last item take the last item and first item at index 0 and add , otherwise add the current item with the next item in the list.


![List of added numbers](/00_includes/Python/PRG-07/EX2.png)




