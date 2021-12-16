class Employee:
    def __init__(self, empid, name, address,dept,basic, hra):
        self.id = empid
        self.name =name
        self.address = address
        self.dept = dept
        self.basic = basic
        self.hra = hra
    def calSal(self):
        return self.basic + self.hra



emp1 = Employee(5000,"Ganesh", "Bangalore", "Delivery", 10000, 100)
s = emp1.calSal()
print(s)