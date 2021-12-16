
--1

select * from dbo.DEPT;

--2

select * from dbo.EMP;
select	ename,
		job,
		hiredate,
		empno
from dbo.EMP;

--3

select	ename,
		job,
		sal/12 as 'Monthly salary',
		sal*12 as 'Annual Salary'
from dbo.EMP;

--4

select	ename+' , '+' '+job as 'Employee And Title'
		
from dbo.EMP;

--5

