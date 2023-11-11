create database dac23;
use dac23;
create table student(
prn_no int not null,
studentName varchar(50) not null,
course varchar(50) not null
);
show tables;
insert into Student(prn_no,StudentName,course)
values(33,"purti sangwani","CPP"),
(28,"atishay jain","java"),
(7,"laveena dodani",".NET"),
(31,"priya","HTML"),
(32,"parul mankar","c"),
(30,"poornita","WPT");
drop table student;
desc student;
select  * from student;

alter table student
add column Grade varchar(25);

alter table student
 add column Address  varchar(50);
 
 update student set  Grade="A+" where prn_no=33;
 update student set  Grade="A" where prn_no=28;
 update student set  Grade="A+" where prn_no=7;
 update student set  Grade="A" where prn_no=31;
 update student set  Grade="A+" where prn_no=32;
 update student set  Grade="A" where prn_no=30;
 
update student set  Address="Nagpur" where prn_no=33;
 update student set  Address="agra" where prn_no=28;
 update student set  Address="bhopal" where prn_no=7;
 update student set  Address="akola" where prn_no=31;
 update student set  Address="Nagpur" where prn_no=32;
 update student set  Address="baitul" where prn_no=30;
 
 
 
 
 
 
 
