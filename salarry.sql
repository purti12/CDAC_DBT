use dac23;
select* from employee;
delimiter //
create trigger after_salary_insert
before insert on employee
for each row
begin
if new.empSalary<0 then
set new.empSalary=1000;
end if;
end //
delimiter ;

insert into employee value(7,"suman",-5000,102);