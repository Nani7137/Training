class NegativeBalanceException(Exception):
    def __init__(self,msg):
        self.msg = msg


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
            if (self.balance <= 0):
                raise NegativeBalanceException("You are unable to withdraw amount your account balance is <=0")
            elif (self.balance < amount):
                raise NegativeBalanceException(
                    "You are unable to withdraw amount your account balance < of requested amount")
            else:
                self.balance -= amount
                # return self.balance
    def withdraw(self, amount):
        if (self.typeofacc == "savings" or self.typeofacc == "current"):
            if(self.balance <= 0):
                raise   NegativeBalanceException("You are unable to withdraw amount your account balance is <=0")
            elif(self.balance < amount):
                raise   NegativeBalanceException("You are unable to withdraw amount your account balance < of requested amount")
            else:
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

try:
    ac = Account(111012, "savings", "Union Bank MKP", "Malikipuram", 27000)
    ac.withdraw(28000)
    ac.showDet()
except NegativeBalanceException as n:
    print(n)
