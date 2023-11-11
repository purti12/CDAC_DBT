
use dac23;
create table customer(
customer_id varchar(50),
firstname varchar(50),
lastname varchar(50)
);

create table orders(
order_id varchar(50), 
customer_id varchar(50),
product_name varchar(50)
);
insert into customer( customer_id,firstname,lastname) values("101","purti","sangwani"),
("102","atishay","jain"),("103","priya","shrikhande"),("104","parul","mankar"),("105","laveena","dudani");

select* from customer;

INSERT INTO Orders(order_id,customer_id,product_name)
Values("1","102","Laptop"),
("2","104","Mobile"),
("3","102","Camera"),
("4","106","Bike"),
("5","108","Chair");
select* from Orders;
#querries
select Customer.firstname,Orders.product_name from Customer INNER JOIN Orders on Customer.customer_id=Orders.customer_id;
select Customer.firstname,Orders.product_name from Customer left JOIN Orders on Customer.customer_id=Orders.customer_id;
select Customer.firstname,Orders.product_name from Customer right JOIN Orders on Customer.customer_id=Orders.customer_id;
select Customer.firstname,Orders.product_name from Customer left JOIN Orders on Customer.customer_id=Orders.customer_id union
select Customer.firstname,Orders.product_name from Customer right JOIN Orders on Customer.customer_id=Orders.customer_id;

