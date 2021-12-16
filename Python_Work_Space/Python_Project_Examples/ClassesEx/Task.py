class Task:
    def __init__(self,taskname,tdesc,tstatus,tpriority,tnotes,tbm,townid,tcrid,crton,modon):
        self.taskname = taskname
        self.tdesc = tdesc
        self.tstatus = tstatus
        self.tprioroty = tpriority
        self.tnotes = tnotes
        self.tbm = tbm
        self.townid = townid
        self.tcrid = tcrid
        self.crton = crton
        self.modon = modon
    def changePriority(self,priority):
        self.tpriority = priority
        return self.tpriority

ts = Task("changepriority", "change", "working", "low", "change request", "10-12-2021", "101", "201", "creation date", "modified date")
print("Task Name : ",ts.taskname,"\n","Task Discription : ",ts.tdesc,"\n","Task Status : ",ts.tstatus,"\n","Task Priority : ",ts.tprioroty,"\n","Task Notes : ",ts.tnotes,"Task TBM : ",ts.tbm,"\n","Task Id : ",ts.townid,"\n","Task Creation ID : ",ts.tcrid,"\n","Task Creation ON : ",ts.crton,"\n","Task Modified ON : ",ts.modon)

print(ts.changePriority("high"))
print(setattr(ts,"crton","10-12-2021"))
print(ts.crton)
print(getattr(ts,"tdesc"))
print(Task.__name__)
print(Task.__doc__)
print(Task.__dict__)
print(Task.__module__)
print(Task.__bases__)