SELECT * FROM dac23.employee;
use dac23;
select* from employee where empSalary>26000;
create index salIndex on employee(empSalary);

drop index salIndex on employee;

#***************************************************************
#Temporary table
#1 without using existing table
create temporary table table1(tId int,tName varchar(20));
desc table1;

#2 temporary table with structure of existing table
create temporary table table2 like department;
desc table2;

select* from table2;


#3 temporry table with structure and data of existing table
create temporary table table3 select*from department;

desc table3;
select* from table3;
create temporary table table4 select name from department;
desc table4;
select* from table4;

