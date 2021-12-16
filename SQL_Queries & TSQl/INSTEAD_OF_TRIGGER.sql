use Training


create trigger trgInsteadOfDelete on emp
instead of delete
as
	declare @empno int;
	declare @job varchar(100);
	select @job=d.job from deleted d;
	select @empno = d.empno from deleted d;

	begin 
		if(@job='PRESIDENT')
		begin
			RAISERROR('cannot delete this person who is vvip',16,1);
		end
		else
		begin
			delete from emp where empno = @empno
			print 'Record Deleted --- Insted Of Delete'
		end
	end
go

SELECT  * FROM EMP;

DELETE FROM EMP WHERE EMPNO = 7839;

--write a trigger to check whether proposed sal is >current sal and update, else no update

alter trigger trgInsteadOfUpdateSal on emp 
instead of update
as
	declare @empno int;
	declare @curentsal decimal;
	declare @proposedsal decimal;

	select @curentsal=d.SAL from deleted d;
	select @proposedsal = i.sal from inserted i;
	select @empno = d.empno from deleted d;

	begin 
		if(@curentsal>=@proposedsal)
		begin
			RAISERROR('cannot update the salary becoz you proposasal lessthan of curent sa',16,1);
		end
		else
		begin
			UPDATE EMP
			SET SAL = @proposedsal WHERE empno = @empno;
			print 'Record updated --- Insted Of Update';
		end
	end
go



SELECT  * FROM EMP;

update emp SET SAL = 1001 WHERE empno = 7369;

--write a trigger not to allow transaction (update) --emp on wednesday

alter trigger trgInsteadOfCantAlloTransWed on emp 
instead of update
as
	declare @empno int;
	declare @curentsal decimal;
	declare @proposedsal decimal;
	declare @day varchar(15);

	select @day = DATENAME(weekday,GETDATE());
	select @curentsal=d.SAL from deleted d;
	select @proposedsal = i.sal from inserted i;
	select @empno = d.empno from deleted d;

	begin 
		if(@day!='wednesday')
		begin
			if(@curentsal>=@proposedsal)
			begin
				RAISERROR('cannot update the salary becoz you proposasal lessthan of curent sa',16,1);
			end
			else
			begin
				UPDATE EMP
				SET SAL = @proposedsal WHERE empno = @empno;
				print 'Record updated --- Insted Of Update';
			end
		end
		else
		begin
			RAISERROR('cannot perform update operations on wednesday',16,1);
		end
	end
go

update emp SET SAL = 100 WHERE empno = 7369;

--SELECT GETDATE() 'Today', DATENAME(weekday,GETDATE()) 'Day Name'

select * from deleted;

CREATE PROCEDURE usp_GetErrorInfo  
AS  
SELECT  
    ERROR_NUMBER() AS ErrorNumber  
    ,ERROR_SEVERITY() AS ErrorSeverity  
    ,ERROR_STATE() AS ErrorState  
    ,ERROR_PROCEDURE() AS ErrorProcedure  
    ,ERROR_LINE() AS ErrorLine  
    ,ERROR_MESSAGE() AS ErrorMessage;  
GO  
  
BEGIN TRY  
    -- Generate divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    -- Execute error retrieval routine.  
    EXECUTE usp_GetErrorInfo;  
END CATCH;   