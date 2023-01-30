import random
x = random.randint(1,100)
#intitialzing the number of guesses
count = 0
while(count < 7):
    count+=1
    inp_val = int(input("Enter a number between 1 and 100 : "))
    if x == inp_val:
        print("Congratulations your guess is correct ")
        break
    elif x>inp_val:
        print("You guessed too small!")
    elif x<inp_val:
        print("You guessed too high!")
if count >=6:
    print("The number is ", x)
    print("Better Luck Next time!")

