create procedure SayHello
as
begin
	print 'Hello World'
end

exec SayHello;

alter procedure SayHello(@name varchar(50))
as
begin
	print 'Hello World'+' '+@name
end
go

alter procedure SayHello(@No int)
as
begin
print 'Hello World ' + cast(@No as varchar) --way1
end

alter procedure SayHello(@No int)
as
begin
print 'Hello World ' + convert(varchar,@No) --way 2
end


exec SayHello 1245

select * from emp;

alter procedure GetEmpNameByEmpNo(@empno int)
as
begin
	declare @name varchar(15);
	select @name = ename from emp where EMPNO=@empno
	print @name
end

exec GetEmpNameByEmpNo 7521

exec SayHello 'Nani From Sona'

--select

create procedure GetEmpDetailsbyEmpno(@empno int)
as
begin
select empno,ENAME, job,deptno from emp where empno=@empno
end



exec GetEmpDetailsbyEmpno 7499


select * from dept;
--insert 
create procedure AddNewDeptDetails(@deptno int, @dname varchar(14), @dloc varchar(13))
as
begin
	insert into DEPT values (@deptno, @dname, @dloc)
end

exec AddNewDeptDetails 50,'Trng','Ben'
exec AddNewDeptDetails @dname='Trng',@dloc='Ben',@deptno=60

--delete

create procedure DelDeptDetails(@deptno int)
as
begin
	delete from DEPT where DEPTNO = @deptno
end


exec DelDeptDetails 50

-- update
select * from emp;

create procedure UpdateColumsDept(@empno int, @sal int)
as
begin
	UPDATE EMP
	SET sal = @sal
	WHERE EMPNO = @empno;
end

exec UpdateColumsDept 7369,900