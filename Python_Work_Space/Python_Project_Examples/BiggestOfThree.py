a = int(input("Enter Your 1st Number : "))
b = int(input("Enter Your 2nd Number : "))
c = int(input("Enter Your 3rd Number : "))

if(a>b and a>c):
    print(a," : is big")
elif(b>a and b>c):
    print(b," : is big")
else:
    print(c," : is big")