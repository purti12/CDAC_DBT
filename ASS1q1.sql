#1-Assignment question 1---
create database assignment;
use  assignment;

create table postoffc(
po_id int primary key,
po_name varchar(25) not null,
po_address varchar(25) not null,
po_city varchar (25) not null,
po_state  varchar(25) ,
po_pincode  int
);

insert into postoffc(po_id, po_name, po_address,po_city, po_state, po_pincode)values(10,"postoffice 1","sindhi colony","NAGPUR","MH",75081),
(11,"postoffice 2","PRATAB NAGAR","KARANJA","MH",75080),
(12,"postoffice 3","MAHAL","NAGPUR","MH",75082),
(13,"postoffice 4","KHAMLA","AGRA","AG",75079),
(14,"postoffice 1","SINDHI COLONY","BHOPAL","MP",75078);

select* from postoffc;
select * from postoffc where po_state="MH";
#c). Write a query that will display all the Post Office records of a State. Display the address of Post Office in a same city.

SELECT po_address FROM postoffc WHERE po_city="NAGPUR";


-- d).In which city having maximum number of post office,show the pincodes of those cities.

WITH CityPostOfficeCount AS (
    SELECT po_city, COUNT(*) AS num_post_offices
    FROM Post_Office
    GROUP BY po_city
    ORDER BY num_post_offices DESC
    LIMIT 1
)
SELECT p.po_city, p.po_pincode
FROM Post_Office p
JOIN CityPostOfficeCount c ON p.po_city = c.po_city;
 
#Q2. Create a store procedure that receives the first name of the person table as input and the last name as output.--


use assignment;
DELIMITER //

CREATE PROCEDURE GetLastName1(IN input_first_name VARCHAR(35), OUT output_last_name VARCHAR(35))
BEGIN
    SELECT lastname INTO output_last_name
    FROM Name1
    WHERE firstname = input_first_name;
END //

DELIMITER ;
CALL GetLastName1('purti', @output_last_name);
select @output_last_name;

#--Q3. Create a query to show the account number and customerid from the customer table for the customer without sales orders--

create table Customer1(
account_number int,
customer_id int,
name varchar(50),
sales_order int
);

INSERT INTO Customer1(account_number,customer_id,name,sales_order)
VALUES(1001,1,"purti ",95),
(1002,2,"Laveena ",90),
(1003,3,"atishay ",85),
(1004,4,"Parul ",80),
(1005,5,"Poornita ",75),
(1006,6,"Priya",70),
(1007,7,"sonam",0),
(1008,8,"poonam",0),
(1009,9,"jayesh",0),
(1010,10,"jitu",0);

select * from Customer1;

Select account_number,customer_id from Customer1 where sales_order=0;


-- 4)Create a query to show the top 10 customerIDs of users with more Orders.

create table Customer1(
account_number int,
customer_id int,
name varchar(50),
sales_order int
);

INSERT INTO Customer1(account_number,customer_id,name,sales_order)
VALUES(1001,1,"Atishay Jain",95),
(1002,2,"Laveena Dudani",90),
(1003,3,"Purti Sangwani",85),
(1004,4,"Parul Mankar",80),
(1005,5,"Poornita Sardar",75),
(1006,6,"Priya Shrikhande",70),
(1007,7,"Ganesh",0),
(1008,8,"Ritesh",0),
(1009,9,"Suresh",0),
(1010,10,"Ramesh",0);

select * from Customer1;

Select account_number,customer_id from Customer1 where sales_order=0;

--#4) Create a query to show the top 10 customerIDs of users with more Orders.

create table maxcustomer(
order_id varchar(50), 
customer_id varchar(50),
product_name varchar(50)
);

select* from maxcustomer;

INSERT INTO  maxcustomer(order_id,customer_id,product_name)
Values("1","102","Laptop"),
("2","104","Mobile"),
("3","103","Camera"),
("4","106","Bike"),
("5","108","Chair"),
("6","107","mouse"),
("7","101","bottle"),
("8","109","pen"),
("9","111","laptop"),
("10","100","camera"),
("11","102","spects"),
("12","109","ring"),
("13","114","tv"),
("14","112","car");
select* from  maxcustomer;

SELECT customer_id, COUNT(order_id) AS OrderCount
FROM maxcustomer
GROUP BY customer_id
ORDER BY OrderCount DESC
LIMIT 10;



#--Q5. Creating procedure without parameter--

DELIMITER //
CREATE PROCEDURE customerCount()
BEGIN
    SELECT COUNT(*) AS Totalcustomer FROM maxcustomer;
END //

DELIMITER ;

call  customerCount();


#Q6..Creating Procedure with (IN/OUT/INOUT) Parameters.

DELIMITER //
CREATE PROCEDURE ExampleProcedure(
    IN inParam INT,
    OUT outParam INT,
    INOUT inoutParam INT
)
BEGIN
    -- Perform operations with the parameters
    SET outParam = inParam * 2;
    SET inoutParam = inoutParam + 10;
END;
//
DELIMITER ;

DELIMITER //
SET @inputValue = 5;
SET @outputValue = 0;
SET @inoutValue = 15;
CALL ExampleProcedure(@inputValue, @outputValue, @inoutValue);
SELECT @outputValue, @inoutValue;
//
DELIMITER ;

#7)Q7.Write a MySQL stored procedure that takes an integer parameter representing a student's score.Based on the score, the procedure should return one of the followingrades using IF-ELSE--


DELIMITER //
CREATE PROCEDURE CalculateGrade1(IN StudentScore INT, OUT Grade VARCHAR(2))
BEGIN
    IF StudentScore >= 90 THEN
        SET Grade = 'A';
    ELSEIF StudentScore >= 80 THEN
        SET Grade = 'B';
    ELSEIF StudentScore >= 70 THEN
        SET Grade = 'C';
    ELSEIF StudentScore >= 60 THEN
        SET Grade = 'D';
    ELSE
        SET Grade = 'Fail';
    END IF;
END //
DELIMITER ;

CALL CalculateGrade1(75,@m);


#Q8. Write a MySQL stored procedure that uses a loop to iterate through a list of numbers from 1 to 20.

DELIMITER //

CREATE PROCEDURE IterateThroughNumbers()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 20 DO
      
        SELECT i AS CurrentNumber;

        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;
CALL IterateThroughNumbers();


# Q9.Create a stored procedure named CalculateFactorial that accepts a single integer parameter, n.Inside the procedure, use a loop to calculate the factorial of n.

DELIMITER //

CREATE PROCEDURE CalculateFactorial(IN n INT)
BEGIN
    DECLARE result INT DEFAULT 1;
    DECLARE i INT DEFAULT 1;

    -- Check if n is greater than or equal to 0
    IF n >= 0 THEN
        -- Loop to calculate the factorial
        WHILE i <= n DO
            SET result = result * i;
            SET i = i + 1;
        END WHILE;

        SELECT result AS FactorialResult;
    ELSE
        -- If n is negative, return an error message
        SELECT 'Error: Please provide a non-negative integer.';
    END IF;
END //

DELIMITER ;
CALL CalculateFactorial(7);


#Q10. Create a stored procedure named GenerateFibonacciSequence that accepts
 -- a single integer parameter, n, representing the number of terms in the Fibonacci sequence.--
 
 DELIMITER //

CREATE PROCEDURE FibonacciSequence(IN n INT)
BEGIN
    DECLARE a INT;
    DECLARE b INT;
    DECLARE i INT;
    DECLARE temp INT;

    SET a = 0; -- Initialize the first Fibonacci number
    SET b = 1; -- Initialize the second Fibonacci number


    IF n <= 0 THEN
        SELECT "Invalid input. Please provide a positive value for n.";
    ELSE

        SELECT a AS term;
        SET i = 2;

        WHILE i <= n DO
            SELECT b AS term;
            SET temp = a;
            SET a = b;
            SET b = temp + b;
            SET i = i + 1;
        END WHILE;
    END IF;
END //

DELIMITER ;

CALL FibonacciSequence(10);
