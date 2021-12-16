use Triggers

CREATE TABLE Employee_Test
(
Emp_ID INT Identity,-- starts with one increments by 1
Emp_name Varchar(100),
Emp_Sal Decimal (10,2)
)



select * from Employee_Test

INSERT INTO Employee_Test VALUES ('Anees',1000);
INSERT INTO Employee_Test VALUES ('Rick',1200);
INSERT INTO Employee_Test VALUES ('John',1100);
INSERT INTO Employee_Test VALUES ('Stephen',1300);
INSERT INTO Employee_Test VALUES ('Maria',1400);

select * from Employee_Test_Audit

CREATE TABLE Employee_Test_Audit
(
Emp_ID int,
Emp_name varchar(100),
Emp_Sal decimal (10,2),
Audit_Action varchar(100),
Audit_Timestamp datetime
)

alter trigger trgAfterInsert 
on Employee_Test
for insert
as
	declare @empid int;
	declare @empname varchar(100);
	declare @empsal decimal;
	declare @audit_action varchar(100);

	select @empid=i.Emp_ID from inserted i;
	select @empname=i.Emp_name from inserted i;
	select @empsal=i.Emp_Sal from inserted i;
	set @audit_action = 'Inserted Record on =  '+ cast(getdate() as varchar)+ ' After Insert Trigger';
	
	insert into Employee_Test_Audit
	values (@empid, @empname, @empsal, @audit_action, GETDATE());
	print 'After Insert Trigger Fired'
go


INSERT INTO Employee_Test VALUES ('Mallesh',21252);


alter trigger trgAfterDelete 
on Employee_Test
for delete
as
	declare @empid int;
	declare @empname varchar(100);
	declare @empsal decimal;
	declare @audit_action varchar(100);

	select @empid=i.Emp_ID from deleted i;
	select @empname=i.Emp_name from deleted i;
	select @empsal=i.Emp_Sal from deleted i;
	set @audit_action = 'deleted Record on =  '+ cast(getdate() as varchar)+ ' After Delete Trigger';
	
	insert into Employee_Test_Audit
	values (@empid, @empname, @empsal, @audit_action, GETDATE());
	print 'After Delete Trigger Fired'
go

DELETE FROM Employee_Test WHERE Emp_ID=8;

select * from Employee_Test;

select * from Employee_Test_Audit;


create trigger trgAfter
on Employee_Test
for update,insert,delete
as
	declare @empid int;
	declare @empname varchar(100);
	declare @empsal decimal;
	declare @audit_action varchar(100);
	declare @insert int ;
	set @insert = select * from inserted;
	
	begin
	select @empid=i.Emp_ID from inserted i;
	select @empname=i.Emp_name from inserted i;
	select @empsal=i.Emp_Sal from inserted i;
	set @audit_action = 'Inserted Record on =  '+ cast(getdate() as varchar)+ ' After Insert Trigger';
	end

	insert into Employee_Test_Audit
	values (@empid, @empname, @empsal, @audit_action, GETDATE());
	print 'After Insert Trigger Fired'
go

