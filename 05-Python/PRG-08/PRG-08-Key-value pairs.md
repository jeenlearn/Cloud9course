# Key-value pairs
Dictionary in Python is a collection of keys values, used to store data values like a map, which, unlike other data types which hold only a single value as an element.Dictionary holds key:value pair. Key-Value is provided in the dictionary to make it more optimized. 
Dictionary holds pairs of values, one being the Key and the other corresponding pair element being its Key:value. Values in a dictionary can be of any data type and can be duplicated, whereas keys can’t be repeated and must be immutable. 

## Key Terminologies



## Exercise 1

- Create a new script.
- Create a dictionary with the following keys and values:

| Key            |     Value          |
| ---------------| ----------------   |
| First name     | Casper             |
| Last name      | Velzen             | 
| Job title      | Lead Learning Coach|
| Company        | TechGrounds        |

- Loop over the dictionary and print every key-value pair in the terminal.



### Sources

* [Dictionary](https://www.geeksforgeeks.org/python-accessing-key-value-in-dictionary/)



### Overcome challenges
 No challenges faced.

 ### Results

 ### Code
  ```python
var_dict={"FirstName":"Gokul","LastName":"Kathirvel","Title":"Business Analyst","Company":"TCS"}
#printing the original dictionary 
print("Original Dictionary is " +str(var_dict))
# using the in operator in for loop to get the key value pair
for i in var_dict:
    print(i ,var_dict[i])
# using the dict.items() in the loop to access the key value pair
print("Dictionary key value pairs are:")
for key,value in var_dict.items():
    print(key,value)
# using enumerate() function to iterate
print("Dictionary key value pairs using enumerate")
for i in enumerate(var_dict.items()):
    print(i)
 ```



![Print Key value pair](/00_includes/Python/PRG-08/EX1.png)

## Exercise 2
- Create a new script.
- Use user input to ask for their information (first name, last name, job title, company). 
- Store the information in a dictionary.
- Write the information to a csv file (comma-separated values). The data should not be overwritten when you run the script multiple times.


### Sources

* [Dict to csv](https://www.geeksforgeeks.org/python-write-dictionary-of-list-to-csv/)
* [Dictionary](https://stackoverflow.com/questions/47813335/save-student-data-in-dictionary-python#:~:text=def%20student_info%20%28student_name%2Cstudent_id%2Cstudent_gpa%29%3A%20student_dic%20%3D%20dict%20%28%29%20student_dic,it%20in%20the%20dictionary%20through%20the%20student_info%20function.)
* [Dictionary to csv](https://www.geeksforgeeks.org/how-to-save-a-python-dictionary-to-a-csv-file/)
* [Dictionary 2](https://pythonguides.com/python-dictionary-to-csv/)
* [Files modes in python](https://stackoverflow.com/questions/16208206/confused-by-python-file-mode-w)
* [Sniffer](https://programtalk.com/python-examples/csv.Sniffer.has_header/)
* [File exist](https://www.pythontutorial.net/python-basics/python-check-if-file-exists/)
* [Working csv files](https://www.geeksforgeeks.org/working-csv-files-python/)



### Overcome challenges
 While writing the dictionary to the csv file, the header was added mutiple times , for solving that issue had to try many different ways, like sniffer which was giving many errors and that was giving more lines of code. So to optimize that  decided to check for the existence of the file using the os.path package and then use an if loop to add the header if the file does not exist and the subsequent times not to add the header and just the dictionary values.

 ### Results

 ### Code
 ```python
import os.path
import csv
# function which add the values to the dictionary
def user_info(firstname,lastname,title,company):
   user_dic = dict()
   user_dic["FirstName"] = firstname
   user_dic["LastName"] = lastname
   user_dic["Title"] = title
   user_dic["Company"] = company
   return user_dic

#sd= dict()
# Input from the user
firstname = input("Enter your first name : ")
lastname = input("Enter your last name : ")
title = input("Enter your title: ")
company = input("Enter your company name: ")
sd= user_info(firstname,lastname,title,company)
print(sd)

fieldnames = ['FirstName', 'LastName', 'Title','Company']
#Checking if the file exsit
file_exists=os.path.exists('C:/Users/jeena/Documents/GitHub/cloud-9-jeenlearn/mytestfile.csv')
print(file_exists)
#opening the file in append mode and if file does exist add the dictionary entry else add the header & dictionary
with open('mytestfile.csv', 'a+') as csvfile:
    if file_exists:
        z = csv.DictWriter(csvfile,fieldnames=fieldnames)
        z.writerow(sd)
    else:
        z = csv.DictWriter(csvfile,fieldnames=fieldnames)
        z.writeheader()
        z.writerow(sd)
 
 ```



![Dicttocsv](/00_includes/Python/PRG-08/EX2.png)

![Dicttocsv](/00_includes/Python/PRG-08/EX2%2C1.png)





