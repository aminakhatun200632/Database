create database lab3
use lab3
create table University( dept_name varchar(20),building varchar(10),budget numeric(9,3))
insert into University values('ICE','Engr',100000)
insert into University values('CSE','Engr',90000)
insert into University values('Physics','Science',60000)
insert into University values('Chemistry','Science',60000)
insert into University values('Math','Science',65000)
insert into University values('English','Arts',50000)

select *from University
select dept_name from University
select dept_name from University where dept_name ='CSE'