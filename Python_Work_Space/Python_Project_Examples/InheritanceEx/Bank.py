class Account:
    def __init__(self, accno, typeofacc, branch, city, balance):
        self.accno = accno
        self.typeofacc = typeofacc
        self.branch = branch
        self.city = city
        self.balance = balance
    def deposite(self, amount):
        if(self.typeofacc == "savings" or self.typeofacc == "current"):
            self.balance +=amount
            #return self.balance
        else:
            self.balance -= amount
            #return self.balance
    def withdraw(self, amount):
        if (self.typeofacc == "savings" or self.typeofacc == "current"):
            self.balance -= amount
            #return self.balance
        else:
            self.balance += amount
            #return self.balance
    def showDet(self):
        print("Account Number : ",self.accno)
        print("Account Type : ",self.typeofacc)
        print("Branch Name : ",self.branch)
        print("City : ",self.city)
        print("Account Balance : ",self.balance)


ac = Account(111012, "savings", "Union Bank MKP", "Malikipuram", 27000)
ac.deposite(7000)
ac.sh
'''ac.showDet()
print("After Deposite")
print("type of account - loan")
ac.deposite(5000)
print(ac.balance)
print("type of account - savings & current")
ac.deposite(5000)
print(ac.balance)
print("After Withdraw ")
print("type of account - loan")
print(ac.withdraw(3000))
print("type of account - savings & current")
print(ac.withdraw(3000))
#print(ac.balance)'''