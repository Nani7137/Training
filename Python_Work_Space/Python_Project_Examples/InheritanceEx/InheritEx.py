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

class TechEmployee(Employee):
    count =100
    def __init__(self, skill,id,name,address,dept,basic,hra):
        super().__init__(id,name,address,dept,basic,hra)
        self.skill = skill
    def calSal(self):
        return self.basic + self.hra+1000

emp1 = Employee(5000,"Ganesh", "Bangalore", "Delivery", 10000, 100)
temp1 = TechEmployee("Python",5000,"Ganesh", "Bangalore", "Delivery", 10000, 100)
print(emp1.calSal())
print(temp1.calSal())