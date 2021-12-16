import pyodbc

mydb = pyodbc.connect("driver={SQL Server}; server=BG1NBR1428\SQLEXPRESS; Database=Organization; trusted_connection=yes")

#
cursor = mydb.cursor()
#cursor.execute("create table customer(name varchar(100),city varchar(200))")
sql = "insert into customer(name, city) values ('Raju1','Bangalore')"

cursor.execute(sql)
sq11 = "select * from customer"
cursor.execute(sq11)
res = cursor.fetchall()
for x in res:
    print(x[0])
print(res)
mydb.commit()
cursor.close()
mydb.close()