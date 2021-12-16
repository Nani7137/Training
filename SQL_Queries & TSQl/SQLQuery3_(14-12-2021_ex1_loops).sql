use Organization

declare @studentmarks int;
set @studentmarks = 60
IF @studentmarks >= 35
	print 'Passed, Congratulations'
else
	print 'Fail, Better Luck Next Time'


IF @studentmarks >= 35
	print 'Passed, Congratulations'
if @studentmarks >= 90
	print 'Pass, You got 1st Rank'
if @studentmarks <= 60
	print 'Passed, You gor 2nd Rank'
else
	print 'Fail, Better Luck Next Time'
	

DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN
    PRINT 'The counter value is = ' + CONVERT(VARCHAR,@Counter)
    SET @Counter  = @Counter  + 1
END


DECLARE @Total_Marks INT = 940 ;

IF @Total_Marks > = 900
BEGIN
   PRINT ' Congratulations ';
   PRINT ' You are eligible for Full Scholarship ';
END
ELSE IF @Total_Marks > = 800
BEGIN
   PRINT ' Congratulations ';
   PRINT ' You are eligible for 50 Percent Scholarship ';
END
ELSE IF @Total_Marks > = 750
BEGIN
   PRINT ' Congratulations ';
   PRINT ' You are eligible for 10 Percent Scholarship ';
END
ELSE
BEGIN
   PRINT ' You are Not eligible for Scholarship ';
   PRINT ' We are really Sorry for You ';
END