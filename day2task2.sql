use dac23;
create table department(
deptId int primary key,
name varchar(50) not null
);
desc department;

insert into  department(deptId,name) values (101,"account"),(102,"developer"),(103,"admin");
select * from department;

create table employee(
empId int primary key,
empName varchar(50) not null,
empSalary decimal(10,2),
did int,
foreign key(did) references department(deptId)
);

desc employee;
insert into employee (empId,empName,empSalary,did)value (2,"suresh",23567,102),(3,"kailash",45678,103),(4,"bhavesh",23144,101);
insert into employee (empId,empName,empSalary,did)value(5,"dinesh",25789,103),(6,"ganesh",45789,103);

select employee.did,employee.empName,department.name from employee,department where employee.did=department.deptId;
select* from employee;

select employee.empName,employee.empSalary ,department.name from employee,department.deptId and (employee.empSalary=(select max(empSalary)from employee));

#copy structure of existing table to new table

create table depart like department;
desc depart;
department