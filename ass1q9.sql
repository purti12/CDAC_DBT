-- Create a stored procedure named CalculateFactorial that accepts a single integer
-- parameter, n.Inside the procedure, use a loop to calculate the factorial of n
use assignment;
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