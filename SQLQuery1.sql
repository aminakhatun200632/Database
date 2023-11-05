create database lab1
use lab1
create table department ( dept_name varchar(20),
                    building varchar(30),
                    budget numeric(9,4)
                    primary key(dept_name));
---insert
insert into department values ('ICE' ,'Engineering',90000)
insert into department values ('CSE' ,'Engineering',86000)
insert into department values ('CE' ,'Engineering',75000)
insert into department values ('Physics' ,'Science',50000)
insert into department values ('Bangla' ,'Arts',40000)

select *from department

---delete
delete from department where dept_name = 'CSE'
select *from department

---Update
update department set budget = budget + budget*1.05 where budget <90000
select *from department
