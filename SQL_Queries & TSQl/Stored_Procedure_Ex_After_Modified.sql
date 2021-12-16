select * from emp;

--1. Create SP which accepts empno and display annual sal

create procedure GetAnnualSalByEmpno(@empno int)
as
begin
	declare @annualsal int;
	select @annualsal = sal*12 from EMP where EMPNO = @empno
	print @annualsal
end

--7369 = 800 = annual 9600
--7788 = 3000 = annual = 36000

exec GetAnnualSalByEmpno 7788

--2. Create SP which accepts empno and display his/her job

create procedure GetJobByEmpNo(@empno int)
as
begin
	declare @job varchar(15);
	select @job = job from EMP where EMPNO = @empno
	print @job
end

--7369 = clerk
--7698 = manager

exec GetJobByEmpNo 7698


--3. Create SP which accepts deptno and display how many emps are working

alter procedure GetCountOfEmpByDeptno(@deptno int)
as
begin
	declare @count int;
	select @count = COUNT(empno) from EMP where DEPTNO = @deptno
	print @count
end

-- 20 = 5
-- 30 = 6

exec GetCountOfEmpByDeptno 30

-- 4. Create SP which accepts empno and display his/her mgr name

alter procedure GetEmpMgrByEmpNo(@empno int)
as
begin
	declare @mgrname varchar(20);
	select @mgrname = ename from emp
	where EMPNO = (select MGR from emp where EMPNO = @empno)
	print @mgrname
end

-- 7369 : Ford

exec GetEmpMgrByEmpNo 7369

--5. select

create procedure GetEmpDetailsbyEmpno(@empno int)
as
begin
select empno,ENAME, job,deptno from emp where empno=@empno
end


exec GetEmpDetailsbyEmpno 7499


select * from dept;


--6. insert 
create procedure AddNewDeptDetails(@deptno int, @dname varchar(14), @dloc varchar(13))
as
begin
	insert into DEPT values (@deptno, @dname, @dloc)
end

exec AddNewDeptDetails 50,'Trng','Ben'
exec AddNewDeptDetails @dname='Trng',@dloc='Ben',@deptno=60




--7. delete

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