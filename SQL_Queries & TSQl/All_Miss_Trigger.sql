SELECT * FROM EMPLOYEE_TEST

CREATE TRIGGER TriggerAfter ON Employee_Test
FOR UPDATE, INSERT, DELETE
AS
DECLARE @empid int;
DECLARE @empname varchar(100);
DECLARE @empsal decimal(10,2);
DECLARE @audit_action varchar(100);



IF EXISTS (SELECT * FROM INSERTED) AND EXISTS(SELECT * FROM deleted)
BEGIN
	SELECT @empid = i.EMP_ID FROM inserted i;
	SELECT @empname = i.EMP_Name FROM inserted i;
	SELECT @empsal = i.EMP_Sal FROM inserted i;
	SET @audit_action = 'Update RECORD -- AFTER UPDATE TRIGGER';
	
	INSERT INTO Employee_Test_Audit
	VALUES(@empid,@empname,@empsal,@audit_action,GETDATE());
	PRINT ' AFTER UPDATE TRIGGER'
END
ELSE IF EXISTS(SELECT * FROM deleted)
BEGIN
	SELECT @empid = i.EMP_ID FROM deleted i;
	SELECT @empname = i.EMP_Name FROM deleted i;
	SELECT @empsal = i.EMP_Sal FROM deleted i;
	SET @audit_action = 'DELETED RECORD -- AFTER DELETE TRIGGER';
	INSERT INTO Employee_Test_Audit
	VALUES(@empid,@empname,@empsal,@audit_action,GETDATE());
	PRINT ' AFTER DELETE TRIGGER'
END
ELSE IF EXISTS (SELECT * FROM INSERTED)
BEGIN
	SELECT @empid = i.EMP_ID FROM inserted i;
	SELECT @empname = i.EMP_Name FROM inserted i;
	SELECT @empsal = i.EMP_Sal FROM inserted i;
	SET @audit_action = 'insert RECORD -- AFTER INSERT TRIGGER';
	INSERT INTO Employee_Test_Audit
	VALUES(@empid,@empname,@empsal,@audit_action,GETDATE());
	PRINT ' AFTER insert TRIGGER'
END
GO

INSERT INTO EMPLOYEE_TEST VALUES('Sheela',1450)
DELETE FROM EMPLOYEE_TEST WHERE EMP_ID=8
UPDATE EMPLOYEE_TEST SET EMP_SAL=2000 WHERE EMP_ID=6
SELECT * FROM EMPLOYEE_TEST
SELECT * FROM EMPLOYEE_TEST_AUDIT


create 