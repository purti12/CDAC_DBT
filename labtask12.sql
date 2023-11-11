create database TriggerDemo;
use TriggerDemo;
create table orderss(
OrderID int auto_increment primary key,
CustomerName VARCHAR(255),
 OrderDate DATEtime,
 TotalAmount DECIMAL(10, 2)
 );
 delimiter //
create trigger before_user_insert
before insert on user 
for each row
begin
	set new. OrderDate=now();
delimiter ;

-- Create the "BeforeUpdateTrigger" to prevent updating TotalAmount if the new value is less
DELIMITER //
CREATE TRIGGER BeforeUpdateTrigger
BEFORE UPDATE ON Orderss
FOR EACH ROW
BEGIN
    IF NEW.TotalAmount < OLD.TotalAmount THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: New TotalAmount cannot be less than the original value.';
    END IF;
END;
//
DELIMITER ;

-- Insert records to test BeforeInsertTrigger
INSERT INTO Orderss(CustomerName, TotalAmount) VALUES
    ('Customer 1', 500.00),
    ('Customer 2', 750.50),
    ('Customer 3', 1200.00);
-- Attempt to delete records to test BeforeDeleteTrigger
DELETE FROM Orderss WHERE TotalAmount > 1000;