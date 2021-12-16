use Training

select * from emp;

declare @name varchar(50)
select @name=ename from emp where EMPNO = 7521
print @name

declare @name varchar(50);
declare @salary int;
select @name=ename,@salary=SAL from emp where EMPNO = 7521
print @name
print @salary

declare @sal int
select @sal=sal*12 from emp where empno=7499
print @sal