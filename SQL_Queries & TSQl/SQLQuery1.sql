select * from emp;

select * from dept;

select e.ENAME,d.DEPTNO,d.LOC
from emp e
join
dept d
on e.DEPTNO = d.DEPTNO and (d.LOC='chicago') ;


select e.ENAME,d.DEPTNO,d.LOC
from emp e
join
dept d
on e.DEPTNO = d.DEPTNO
order by d.LOC;


select e.ENAME,d.DEPTNO
from emp e,dept d
where (e.JOB='manager')<e.HIREDATE;


select e.ENAME,d.DNAME
from emp e
join
dept d
on e.DEPTNO = d.DEPTNO;


select *
from emp e,dept d
where e.DEPTNO = d.DEPTNO;

select employee.ename as 'Emplyoee' --, manager.ename as 'Manager'
from emp employee 
join
emp manager
on manager.empno = employee.mgr and employee.HIREDATE < manager.HIREDATE;

select * from emp;



SELECT ENAME,HIREDATE ,STARTDATE ,ENDDATE
FROM EMP 
join
JOBHIST
on HIREDATE BETWEEN STARTDATE AND ENDDATE;



select ename,job
from emp
where job='manager';

where sal>1000
then sal else 1000 end) 


select * from emp;

select * from dept;


select dname,
(case
when dname != (select dname
from dept
where dname like 'sales') then 'non sales' 
else 'sales' end) Salesstatus
from dept;

select * from emp;

select ename,sal,
(case
when sal = any (select sal
from emp
where 1000 < SAL) then sal 
else 1000 end) as 'result'
from emp;


select sal,
(case
when sal = any (select sal
from emp
where 1000>sal) then 'less'
when sal = any (select sal
from emp
where sal between 1000 and 2500) then 'medium'
when sal = any (select sal
from emp
where 2500<sal) then 'high' end) as 'status-result'
from emp;



select * from emp;

select * from jobhist;

select ename,sal
from emp
where ename < (select 





clm names and size must  be same while using set operators 