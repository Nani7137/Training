def biggestNum(a,b,c):
    if (a > b and a > c):
        return (a, " : is big")
    elif (b > a and b > c):
        return (b, " : is big")
    else:
        return (c, " : is big")

a = int(input("Enter Your 1st Number : "))
b = int(input("Enter Your 2nd Number : "))
c = int(input("Enter Your 3rd Number : "))
print(biggestNum(a,b,c))