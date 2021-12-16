--left
SELECT LEFT('abcdefg',2);  
GO 

--RIGHT
SELECT right('WAKE UP AND TAKE UP',3) 
 As New;

select * from emp;

--len
select LEN(ename) as Length
	from EMP

--lower

SELECT LOWER('WAKE UP AND TAKE UP') 
 As New;

 SELECT UPPER('wake up and take up') 
 As New;

-- ltrim
SELECT LTRIM('        WAKE UP AND TAKE UP') 
 As New;

 --RTRIM
 SELECT RTRIM('WAKE UP AND TAKE UP        ') 
 As New;

 --replace
  SELECT Replace('WAKE UP AND TAKE Up','AND','&') 
 As New;

 --REVERRSE
 SELECT REVERSE('WAKE UP AND TAKE Up') 
 As New;

 --TRIM
 SELECT TRIM('        WAKE UP AND TAKE UP        ') 
 As New;

 --substring
 SELECT SUBSTRING('WAKE UP AND TAKE UP',2,5) 
 As New;

