def avg(lst):
    sum_of_list = 0
    for i in range(len(lst)):
        sum_of_list += lst[i]
        print("Sum :"+str(sum_of_list))
    z = sum_of_list/len(lst)
    return z
x = 10
y = 20
lst = [x,y]
z = avg(lst)
print ("The average of",x,"and", y, "is", z)