SELECT * FROM dac23.employee;
update employee  set empName="Suraj" where did=101;

select* from employee where empName like 's%';
select empName from employee where empSalary between 20000 and 50000;
select * from employee order by empName and empSalary;
