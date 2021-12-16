
CREATE TABLE Person (
id INT,
Securityno INT,
Sal numeric(18,9),
DOB DATETIME,
Name VARCHAR(80)
);
GO


-- Insert rows with random values
DECLARE @row INT;
DECLARE @string VARCHAR(80), @length INT, @code INT;
SET @row = 0;
WHILE @row < 100000 BEGIN
SET @row = @row + 1; -- Build the random string
SET @length = ROUND(80*RAND(),0);
SET @string = 'Name';
WHILE @length > 0 BEGIN
SET @length = @length - 1;
SET @code = ROUND(32*RAND(),0) - 6;
SET @string = @string + CHAR(ASCII('a')+@code-1);
END -- Ready for the record
SET NOCOUNT ON;
INSERT INTO person VALUES (
@row,
ROUND(2000000*RAND()-1000000,0),
ROUND(2000000*RAND()-1000000,9),
CONVERT(DATETIME, ROUND(60000*RAND()-30000,9)),
@string
)
END

select * from Person;


insert hello values(3,'nani');

select * from hello1

create table hello1(
	empno int not null,
	empname varchar(20)
)

drop table hello1;

ALTER TABLE hello1
ADD CONSTRAINT PK_Person PRIMARY KEY(empno);

set nocount off

update person set name='John' where id between 1 and 5000
update person set name='Peter' where id between 5001 and 10000
update person set name='Mark' where id between 10001 and 15000
update person set name='Gray' where id between 15001 and 20000
update person set name='Levy' where id between 20001 and 25000
update person set name='Chris' where id between 25001 and 30000
update person set name='Jason' where id > 30000


select * from Person where name='john';

--set statistics IO, time on;

create clustered index person_indx on person(name);

select * from Person


use Training

