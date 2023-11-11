--  Write a MySQL stored procedure that uses a loop to iterate through a list of numbers from 1 to 20.
use assignment;
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