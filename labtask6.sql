use dac23;
create table salespeople(
salesman_id varchar(25) ,
name varchar(25),
city varchar(25),
 commission float
 );
 insert into salespeople(salesman_id, name , city, commission)values("5001" ,"James Hoog" ,"California", 0.15),
 ("5002" ,"Nail Knite" ,"paris", 0.13),
  ("5005" ,"Pit Alex" ,"london", 0.11),
   ("5006" ,"Mc Lyon" ,"paris", 0.14),
    ("5007" ,"Paul Adam" ,"rome", 0.13),
     ("5008" ,"Lauson" ,"london", 0.12);
     
     select* from salespeople;
     create view  city as
     select * from salespeople WHERE city="california";
     
     create view counting (commission,number) as select commisscommissionion ,count(*) from salespeople group by commission;
 
