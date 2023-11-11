#==========IN==============
use dac23;
SELECT * FROM maxcustomer;
Delimiter //  
create procedure getSingleid(in Id int)
begin
select customer_id from maxcustomer where order_id=id;
end //
Delimiter ;

#==============IN/OUT============
Delimiter //  

create procedure findCustomer(in id int,out customer varchar(50))
begin
select customer_id into customer from  maxcustomer  where order_id=Id;
end //
Delimiter ;
call findCustomer(3,@m);
select @m as customer;

