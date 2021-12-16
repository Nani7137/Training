SELECT * FROM EMPLOYEE_TEST

alter TRIGGER trgAfter ON EMPLOYEE_TEST
FOR INSERT, UPDATE , DELETE
AS
  DECLARE @empid INT;
  DECLARE @empname VARCHAR(100);
  DECLARE @empsal DECIMAL(10,2);
  DECLARE @audit_action VARCHAR(100);
  

  SELECT @empid=i.Emp_ID FROM INSERTED i;
  SELECT @empname=i.Emp_Name FROM INSERTED i;
  SELECT @empsal=i.Emp_Sal FROM INSERTED i;

  SELECT @empid=d.Emp_ID FROM DELETED d;
  SELECT @empname=d.Emp_Name FROM DELETED d;
  SELECT @empsal=d.Emp_Sal FROM DELETED d;

  --SET @audit_action='Inserted Record -- After Insert Trigger'
  IF EXISTS( SELECT 0 FROM INSERTED)
  BEGIN
     IF EXISTS(SELECT 0 FROM DELETED)
	 BEGIN
	   SET @audit_action='Updated Record -- After Update Trigger';
	 END ELSE
	 BEGIN
	   SET @audit_action='Inserted Record -- After Insert Trigger';
	 END
	END ELSE
	BEGIN
		SET @audit_action='Deleted Record -- After Delete Trigger';
	END

	INSERT INTO EMPLOYEE_TEST_AUDIT
	VALUES(@empid,@empname,@empsal,@audit_action,getdate());
	PRINT 'AFTER ' + @audit_action + ' TRIGGER FIRED'
GO

INSERT INTO EMPLOYEE_TEST VALUES('Mike',1450)
DELETE FROM EMPLOYEE_TEST WHERE EMP_ID=8
UPDATE EMPLOYEE_TEST SET EMP_SAL=2000 WHERE EMP_ID=6
SELECT * FROM EMPLOYEE_TEST
SELECT * FROM EMPLOYEE_TEST_AUDIT