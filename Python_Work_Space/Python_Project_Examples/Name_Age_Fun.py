def nameAge(name,age):
    c = 100 - age
    year = 2021 + c
    return (year, " year ", name, " turn 100 years")

name = input("Enter Your Name : ")
age = int(input("Enter Your Age : "))
print(nameAge(name,age))
