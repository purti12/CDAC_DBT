create database Users;
use Users;
create table Address(
Student_id int ,
House_no int not null,
Locality varchar(50)not null,
City varchar(25)not null,
Landmark varchar(50),
State  varchar(50),
Pincode  varchar(50));

select*from Address;