use assignment;
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
