create function AddTwoNumbers(@num1 int, @num2 int)
returns int
as
begin
	return @num1+@num2
end

select raju.AddTwoNumbers(1,2)

select empno,ENAME,SAL,COMM,raju.AddTwoNumbers(sal,COMM) Totalsal from emp


create function AnnualSal(@empno int)
returns int
as
begin
	declare @anualsal int
	select @anualsal = sal*12 from emp where EMPNO = @empno
	return @anualsal
end

select empno,ENAME,SAL,COMM,raju.AnnualSal(EMPNO) Annuallsal from emp



create function GetAllEmpDetails()
returns table
as
return
(
	select * from emp
);

select * from GetAllEmpDetails() -- Table Valued

create function GetAllEmpDetailsByDeptNum(@deptno int)
returns table
as
return
(
	select * from emp where DEPTNO=@deptno
);

select * from GetAllEmpDetailsByDeptNum(30)