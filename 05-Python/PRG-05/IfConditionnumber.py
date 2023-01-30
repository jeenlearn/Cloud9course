while True:
    x=int(input("Please enter a number :"))
    if(x < 100):
        print(x," is pretty low, isnt it?")
    elif(x > 100):
        print("Wow! ",x," is a big number ")
    else:
        print(x, " is a nice number indeed!")
        break
        