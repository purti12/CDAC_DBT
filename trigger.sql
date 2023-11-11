use assignment;
create table user
(
	id int primary key auto_increment,
    name varchar(50),
    email varchar(100)
);

create table audit_log
(
	event_type varchar(50),
    event_discription varchar(150)
);

# INSERT #
delimiter //
create trigger after_user_insert
after insert on user 
for each row
begin
	Insert into audit_log(event_type,event_discription)
    values('Insert',concat('New user inserted : Id',new.id,',Name',new.name,',Email',new.email));
end //
delimiter ;

insert into user (name,email)
values ('Ramesh','ram@gmail.com');
insert into user (name,email)
values ('Suresh','suresh@gmail.com');

select * from user;
select * from audit_log;

# Delete #

delimiter //
create trigger befor_user_delete
before delete on user 
for each row
begin
	Insert into audit_log(event_type,event_discription)
	values('Delete',concat('Old user deleted : Id',old.id,',Name',old.name,',Email',old.email));
end //
delimiter ;

delete from user where id =2;

select * from audit_log;
select * from user;

# update #

delimiter //
create trigger after_user_update
after update on user 
for each row
begin
	Insert into audit_log(event_type,event_discription)
	values('Update',concat('User Updated : Id',new.id,',Name',new.name,',Email',new.email));
end //
delimiter ;
update User set email="ramesh@gmail.com" where id=1;

select * from audit_log;
select * from user;

