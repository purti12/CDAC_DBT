use dac23;
create table products(
Product_Id int,
category varchar(50),
product varchar(50),
price int
);
create table customer(
order_no varchar(25),
order_line int,
part varchar(25)
);
drop table customer;

insert into products(Product_id,category,product,price) value(1,"non-veg","chicken",150),
(2,"non-veg","mutton",200),
(3,"non-veg","fish",220),
(4,"non-veg","prawn",250),
(5,"veg","goi",100),
(6,"veg","paratha",45),
(7,"veg","vegbiryani",150);

desc products;

insert into customer(order_no,order_line,part) value("10001",1,"A"),("10001",2,"B"),("10001",3,"C"),("10002",1,"A"),
("10002",2,"B"),("10002",3,"C"),("10003",1,"A");

select*from products;
select* from customer;


ALTER TABLE Products
ADD CONSTRAINT PK_product_id PRIMARY KEY (product_id);

ALTER TABLE customer
ADD CONSTRAINT FK_order_no
FOREIGN KEY (order_no)
REFERENCES Products(product_id);


SELECT * FROM Products ORDER BY price ASC, product_id DESC;

SELECT * FROM Products
ORDER BY price d;






