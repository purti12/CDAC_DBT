#=======while loop=======
use dac23;


delimiter //
create procedure whileloop()
begin
declare num int default 1;
declare result varchar(50)default '';
set num =1;
set result='';
while num<10 do 
set result =concat(result ,num,',');
set num=num+1;
end while;
select result ;
end //
delimiter ;


#=========loop=====

delimiter //
create procedure loopdemo()
begin
declare x int;
declare str varchar(50);

set x=1;
set str='';

loop_label: loop
if x>10 then
leave loop_label;
end if;
set x=x+1;
if(x mod 2)then
iterate loop_label;
else 
set str=concat(str , x,',');
end if;
end loop;
select   str as result;
end //
delimiter ;

call loopdemo();

#=====REPEAT======

delimiter //
create procedure Testrepeat1()
begin
declare num int default 1;
declare result varchar(50) default '';
 repeat
 set result =concat(result ,num,',');
 set num=num*5;
 until num>1000
 end repeat;
 select result;
 end //
 delimiter ;
 
 call Testrepeat1();








