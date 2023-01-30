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
    
  
        


