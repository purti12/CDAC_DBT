#for creating database
create database dac23;
#for selecting the database
use dac23;
#for checking available databases
show databases;
#create a table
employeeemployeecreate table Employee(
empId int,
empName varchar(25)
);
#check for table availality
show tables;
#check schema of table structure
desc Employee;

#Add new column to existing table
alter table Employee
  add column department varchar(50);departmentemployee
  
  #Add new column to existing table at particular position
  alter table Employee
  add column salary decimal(10,2)after empName;
  
  #Modify Existing column in the table
  alter table Employee
  modify column empName varchar(50)not null;
  
  #change name of column
  alter table employee
  change  column salary empsalary decimal(10,2);
  
  #change table name
  alter table employee
  rename dacemployee;
  
  desc dacemployee;
  
  #delete particular column
  alter table dacemployee;
    drop column depart;
    #delete complete table structure
    Drop table dacemployee;
    
    #delete database
    drop database dac23;
    







