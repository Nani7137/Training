select * from EMP

begin try
	insert into emp(EMPNO) values (7521);
end try
begin catch
	print @@error
end catch


begin try
	insert into emp(EMPNO) values (7521);
end try
begin catch
	print @@error
	print error_number()
end catch

begin try
	insert into emp(EMPNO) values (7521);
end try
begin catch
	--print @@error
	print error_number()
	print error_message();
end catch

begin try
	insert into emp(EMPNO) values (7521);
end try
begin catch
	--print @@error
	print error_number();
	throw
end catch

begin try
	insert into emp(EMPNO) values (7521);
end try
begin catch
	--print @@error
	print error_number();
	throw 51000,'Sorry, cound not add record since few data are missing',1
end catch

declare @result int;
begin try
	set @result=1/0;
end try
begin catch
	print error_message()+' '+cast(error_number() as varchar)
end catch

declare @result int;
begin try
	set @result=1/0;
end try
 print 'hello' --never write between these
begin catch
	print error_message()+' '+cast(error_number() as varchar)
end catch

declare @result int;
begin try
	set @result=1/0;
end try
begin catch
	print error_message()+' '+cast(error_number() as varchar)
end catch
begin catch
	print error_message()+' '+cast(error_number() as varchar) -- multiple catch blocks not allowed
end catch


select * from master.dbo.SYSMESSAGES Where error = 2627 and msglangid = 1033