use  assignment;

create table NAME1(
customer_id varchar(50),
firstname varchar(50),
lastname varchar(50)
);

insert into NAME1( customer_id,firstname,lastname) values("101","purti","sangwani"),
("102","atishay","jain"),("103","priya","shrikhande"),("104","parul","mankar"),("105","laveena","dudani");

DELIMITER //
CREATE PROCEDURE GetLastName(IN FirstName VARCHAR(50), OUT LastName VARCHAR(50))
BEGIN
    SELECT LastName INTO LastName
    FROM NAME1
    WHERE PersonFirstName = FirstName;
END //
DELIMITER ;

CALL NAME1()