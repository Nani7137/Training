declare empcursor cursor for
select EMPNO,ENAME,SAL from EMP order by sal desc
declare @name varchar(10), @sal int, @empno int
open empcursor
print 'soon after opening the cursor'
print @@fetch_status
fetch next from empcursor into @empno, @name, @sal
while @@FETCH_STATUS=0
begin
	print 'In side the while loop'
	print @@fetch_status
	print @name + ' is earning '+cast(@sal as varchar)
	fetch next from empcursor into @empno, @name, @sal
end
print 'soon after coming out of loop'
print @@fetch_status
close empcursor
deallocate empcursor
go