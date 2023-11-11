use dac23;
create table maxcustomer(
order_id varchar(50), 
customer_id varchar(50),
product_name varchar(50)
);

select* from maxcustomer;

INSERT INTO  maxcustomer(order_id,customer_id,product_name)
Values("1","102","Laptop"),
("2","104","Mobile"),
("3","102","Camera"),
("4","106","Bike"),
("5","108","Chair"),
("6","102","mouse"),
("7","102","bottle"),
("8","102","pen"),
("9","108","laptop"),
("10","106","camera"),
("11","106","spects"),("12","102","ring"),("13","104","tv"),("14","102","car");
select* from  maxcustomer;

SELECT Customer_id
FROM  maxcustomer
GROUP BY Customer_id
ORDER BY COUNT(order_id) DESC;

