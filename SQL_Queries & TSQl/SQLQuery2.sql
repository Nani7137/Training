USE Training;

select * from dbo.emp;

SELECT deptno, SUM(sal) 
FROM dbo.emp 
GROUP BY DEPTNO;

SELECT deptno,job, avg(sal) as 'avgsal'
FROM dbo.emp
where job='manager'
group by DEPTNO,JOB;

SELECT deptno,job, sum(sal) as 'totalsal'
FROM dbo.emp
where job='salesman'
group by DEPTNO,JOB;

select job,min(distinct SAL) as 'minsal'
FROM dbo.emp
group by ss;



SELECT job, max(sal) as 'maxsal'
FROM dbo.emp
where job='analyst'
group by JOB;


select 
count (*) as 'No.of Employees'
from dbo.EMP;

SELECT DEPTNO, max(COMM) as 'maxcomm'
FROM dbo.emp
group by DEPTNO;


select
count (deptno)
from dbo.emp;

SELECT MAX(ISNULL(COMM,0)) AS 'High Comm Paid'
FROM EMP;

SELECT COUNT(DISTINCT DEPTNO) AS 'Total Dept'
FROM EMP;
