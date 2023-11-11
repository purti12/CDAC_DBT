create database purti;
use purti;

create table orders(
ord_no int,
purch_amt decimal
ord_date varchar(50),
customer_id int,
salesman_id int
);
drop orders;
drop table orders;
create table orders(
ord_no varchar(25),
purch_amt decimal(10,2),
ord_date varchar(50),
customer_id int,
salesman_id int
);
desc orders;
select* from orders;

insert into orders(ord_no,purch_amt, ord_date,customer_id ,salesman_id)values("70001", 150.5 ,"2012-10-05",3005,5002),
("70009", 270.65, "2012-09-10",3001 ,5005),
("70002", 65.26, "2012-10-05",3002 ,5001),
("70005 ",2400.6,"2012-07-27",3007,5001),
("70008",5760, "2012-09-10",3002,5001);

select avg(purch_amt) as "average" from orders;
alter table orders
  add column salespeople varchar(50);
  
  insert into orders(salesperson) where ord_no(70001,70009,70002,70005,70008) values("purti","atishay","laveena","purti","priya");
