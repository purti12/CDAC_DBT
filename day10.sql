#====functions======
SELECT char(65,71,89,122);

select concat("purti","sangwani");

select lower("soft polynomial");

select upper("soft polynomial");

select trim("  hellocdac");

select substr("jitupurti",2,6);

select Instr("purti sangwani","purti");

#===========numeric function=====

select mod(10,3);

select power(10,2);

select round(173.4);

select truncate(193.3456,2);

select sqrt(4);

#=======date function========

select curdate();

select now();

select month(curdate());

select day(curdate());

select year(curdate());

select day(curdate());

select month('2023-10-23 3:45:00');

select sysdate();

#=======stored function=========
delimiter //
create function hello_sir()
returns varchar(50)
deterministic
begin
return "hello sir";
end //
delimiter ;

delimiter //
create function addition (x int,y int)
returns int
deterministic
begin
return(x+y);
end //
delimiter ;

select addition(10,23);











