--GETDATE, DATENAME, DATEPART, DAY. Month, year, DATEDIFF, DATEADD. ISD

-- get date
select getdate()

--datename

SELECT DATENAME(MONTH, '2021-01-07') AS Result;

--datepart

SELECT DATEPART(month, '2017/08/25') AS DatePartInt;

--day
select day('2021-12-14')

--month
select month('2021-12-14')

--year
select year('2021-12-14')

--datedifference
select DATEDIFF(year,'2017/08/25','2021-01-07')

--dateadd
select DATEADD(MONTH,26,'2021-01-07')

--isd
--irregular (return '0')
select ISDATE('Hello World!')
--regular (return '1')
select ISDATE('2017/08/25')
