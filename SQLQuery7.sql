create database lab7
use lab7
create table instructor
( ID int, name nvarchar(50), dept_name nvarchar(50),salary int )
select * from instructor
insert into instructor values(22222,'Amina','Physics',95000)
insert into instructor values(12121,'Mahedi','Finance',90000)
insert into instructor values(32343,'Zabir','History',60000)
insert into instructor values(45565,'Uamme','CSE',75000)
insert into instructor values(98345,'Shanta','EEE',80000)
insert into instructor values(98346,'Sumona','ICE',80000)
select * from instructor
--create another table for update value keeping
create table backup_ins
( ID int, name nvarchar(50), dept_name nvarchar(50),salary int )
select * from backup_ins
--create another table for deleted value keeping
create table backup_del
( ID int, name nvarchar(50), dept_name nvarchar(50),salary int )
select * from backup_del
--creating trrigger
CREATE TRIGGER ins_trigger
ON instructor
AFTER INSERT
AS
BEGIN
    PRINT 'The trigger inserted successfully';
END;

-- Create the update trigger
CREATE TRIGGER upd_trigger
ON instructor
AFTER UPDATE
AS
BEGIN
    INSERT INTO backup_upd (ID, name, dept_name, salary)
    SELECT ID, name, dept_name, salary
    FROM inserted;
END;

-- Create the delete trigger
CREATE TRIGGER del_trigger
ON instructor
AFTER DELETE
AS
BEGIN
    INSERT INTO backup_del (ID, name, dept_name, salary)
    SELECT ID, name, dept_name, salary
    FROM deleted;
END;

-- Example DELETE statement to test the delete trigger
DELETE FROM instructor WHERE ID = 32343;

-- Select from the backup_del table to check the result
SELECT * FROM backup_del;