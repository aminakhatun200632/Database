create database lab2
use lab2
create table instructor(
ID varchar(20),
name varchar(15) not null,
salary numeric(8,2),
primary key(ID));


insert into instructor(ID,name,salary) values('200632','Amina',96000)
insert into instructor(ID,name,salary) values('200611','Nirob',80000)
insert into instructor(ID,name,salary) values('200601','Naima ',70000)
insert into instructor(ID,name,salary) values('200633','Pranto',90000)
insert into instructor(ID,name,salary) values('200605','Uamme',95000)
insert into instructor(ID,name,salary) values('200603','Zabir',68000);
select * from instructor
alter table instructor add course_id varchar(20)
select * from instructor
drop table instructor 
select * from instructor

