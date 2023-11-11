select *from dac23.employee;
use dac23;
Delimiter //  

create procedure getAllemployee()
begin
select empName from employee;

end //
Delimiter ;

Delimiter //  

create procedure getAllemployeeAndNos()
begin
select empName from employee;
select count(*) from employee;
end //
Delimiter ;


call getallemployee();
call getallemployeeAndNos();

#********IN/OUT/INOUT**************
Delimiter //  
create procedure getSingleemployee(in Id int)
begin
select empName from employee where empId=id;
end //
Delimiter ;

call getSingleemployee(3);

Delimiter //  

create procedure findSalary(in id int,out salary decimal(10,2))
begin
select empSalary into salary from employee where empId=Id;
end //
Delimiter ;
call findsalary(3,@m);
select @m as salary;

Delimiter //  

create procedure updateSalary(inout sal decimal(10,2),in id int)
begin
select empSalary into sal from employee where empId=Id;
set sal=sal*1.10;
update employee set empSalary=sal where empId =id;

end //
Delimiter ;
call updateSalary(@s,3);
select @s as "updated salary";



