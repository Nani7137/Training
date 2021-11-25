


CREATE TABLE casestudy (
    taskid           int NOT NULL,
    name               VARCHAR(30),
    description        VARCHAR(30),
    status             VARCHAR(30),
    priority           VARCHAR(30),
    notes            VARCHAR(30),
    bookmark          VARCHAR(30),
    ownerid         int,
    creationon         DATE,
    modifiedon         DATE);

	INSERT INTO casestudy (
    taskid,
    name,
    description,
    status,
    priority,
    notes,
    bookmark,
    ownerid,
    creationon,
    modifiedon)
	VALUES(1,'NANI','WELCOME','ACTIVE','HIGH','HI','YES',1,'2000-01-01','2002-02-22'),
	(2,'KESAVA','WELCOME1','ACTIVE1','MEDIUM','HI','YES',2,'2000-01-22','2002-02-23'),
	(3,'RAKESH','WELCOME2','ACTIVE2','LOW','HI','YES',3,'2000-01-22','2002-02-23');

	SELECT *FROM casestudy;