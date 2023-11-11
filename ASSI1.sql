#Q1 a).Create a new table to track the Post_Office location.

use dac23;
create table postoff(
po_id int primary key,
po_name varchar(50) not null,
po_address varchar(50) not null,
po_city varchar (50) not null,
po_state  varchar(50) ,
po_pincode  int
);
insert into postoff(po_id, po_name, po_address,po_city, po_state, po_pincode)values(10,"postoffice 1","sindhi colony","NAGPUR","MH",75081),
(11,"postoffice 2","PRATAB NAGAR","KARANJA","MH",75080),
(12,"postoffice 3","MAHAL","NAGPUR","PN",75082),
(13,"postoffice 1","KHAMLA","AGRA","AG",75079),
(14,"LAVEENA","SINDHI COLONY","BHOPAL","MP",75078);

select* from postoff;
desc postoff;


# Write a query that will display all the Post Office records of a State. Display the address of
Post Office in a same city

select state from postoff





