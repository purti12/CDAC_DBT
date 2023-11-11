use dac23;
select if(10<20,"10 is smaller","20 is smaller"); 

#-----use of if else condition----
select *from dac23.employee;
select empName,empSalary,if  (empSalary>50000,"Higher salary","lower salary")as result from employee;


#-----another ifelse--------
delimiter //

create procedure salarystatus (in id int)
begin
declare salary decimal (10,2);
declare status varchar(50);

select empSalary into salary from employee where empId =id;
if salary>40000 then
set status="good  salary";
else
set status="less salary"; 
end if;
select status as result;
end //
delimiter ;
call salarystatus(5);


select "anup sir " as trainer;

#=====case=====
delimiter //
create procedure salarystatus1 (in id int)
begin
declare salary decimal (10,2);
declare status varchar(50);

select empSalary into salary from employee where empId =id;
set status=
case
when salary >50000 then "excelent"
when salary >40000 then "very good"
when salary >30000 then " good"
else "keep going"
end;
select result as result1;
end //
delimiter ;
call salarystatus(3)

#========if elseif========
delimiter //
create procedure salarystatus2 (in id int)
begin
declare salary decimal (10,2);
declare status varchar(50);

select empSalary into salary from employee where empId =id;
if salary>50000 then 
set status ="good salary";
elseif salary>40000 and salary<50000 then
set status ="nice salary";
else 
set status="less salary";
end if;
select status as result;
end //
delimiter ;
call salarystatus(2)


