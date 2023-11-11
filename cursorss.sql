use dac23;
SELECT * FROM department;
delimiter //
create procedure cursordemo4()
begin
declare finished int default 0;
declare name1 varchar(50);
declare cusId int ;

declare cursor2 cursor for select name ,deptId from department;
declare continue handler for not found set finished=1; 
open cursor2;
loop2:loop
if finished  then 
leave loop2;
end if ;

fetch cursor2 into name1,cusId;

select name1,cusId;
end loop;
close cursor2;

end //
delimiter ;

call cursordemo4();



