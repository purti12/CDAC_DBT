#==========cursor==========
use dac23;
SELECT * FROM employee;
delimiter //
create procedure cursordemo1()
begin
declare finished int default 0;
declare name varchar(50);
declare salary decimal(10,2);

declare cursor1 cursor for select empName,empSalary from employee;
declare continue handler for not found set finished=1; 
open cursor1;
loop1:loop
if finished  then 
leave loop1;
end if ;

fetch cursor1 into name,salary;

select name,salary;
end loop;
close cursor1;

end //
delimiter ;

call cursordemo1();







