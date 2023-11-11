#TCL
use dac23;
select* from dac23.department;
start transaction;
select*from department;
insert into department(deptId, name) values(104,"marketing");

update department set name="HR" where deptId=104;
rollback;
commit;
select *from department;
use dac23;
select * from employee;
select empName from employee where did=(select deptid from department where name="developer");

create view pu as

#without nested query find second highestsalary
select empsalary from employee order by(empSalary)desc limit 1 offset 1;
 

 select * from pu;
 
#with nested 2 query find second highestsalary
select max(empsalary) from employee where empsalary <(select max(empsalary)from employee);

#with nested 3 query find second highestsalary
select empName,empSalary from employee where empSalary=(select max(empsalary) from employee where empsalary <(select max(empsalary)from employee));






update Employee set empsalary=empsalary+5000 where did=(select deptId from department where name="developer");
