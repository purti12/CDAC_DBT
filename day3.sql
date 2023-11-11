create database cdac23;
use cdac23;

create table voter(
voterId int,
voterName varchar(50) not null,
age int check(age>=18),
aadhar varchar(12) unique,
income decimal(10,2) default 0.00,
primary key(voterId)
);
desc voter;
select* from voter;

#aggregate functions
select max(income)as"Heighest income" from voter;
select min(income)as"lowest income" from voter;
select sum(income)as"total income" from voter;
select count(*)as"total  record" from voter;
select avg(income)as"average income" from voter;

#clauses
select voterName as name,age as age from voter;
select voterName as name,age as age,income  from voter where income=50000 ;
select voterName as name,age as age,income  from voter where income in(50000,100000) 
select voterName as name,income  from voter where income between 40000 and 100000;
select voterName as name,income  from voter where age>24 or income>40000;
select* from voter where voterName like 'p%';
select* from voter where voterName like '%_r_%';
select* from voter where voterName like '%a';

select age,sum(income)from voter group by(age) having age>23;
select * from voter where aadhar is null;








insert into voter(voterId,voterName,age,aadhar,income) values(100,"purti",22,"234566789345",50000);
insert into voter(voterId,voterName,age,aadhar,income) values(101,"atishay",22,"234566789346",100000);
insert into voter(voterId,voterName,age,aadhar,income) values(102,"laveena",22,"234566759345",50000);
insert into voter(voterId,voterName,age,aadhar,income) values(103,"parul",22,"234566799348",50000);
insert into voter(voterId,voterName,age,aadhar,income) values(104,"priya",22,"234567789345",50000);
insert into voter(voterId,voterName,age,aadhar,income) values(105,"poornita",22,"235566789345",50000);

update  voter set aadhar =null where voterId=105;
update voter set income="40000" where income="50000";
update voter set income="50000" where income="40000";
update  voter set income ="40000" where aadhar="null";
update voter set age="25" where voterId="100";
update voter set age="23" where voterId-"102";
update voter set age="24" where voterId="103";
update voter set age="26" where voterId="104";

alter table voter
insert into voter(voterId,voterName,age,aadhar,income) values(106,"poornita",22,"235566789945",60000);
select  distinct (voterName) from voter;
