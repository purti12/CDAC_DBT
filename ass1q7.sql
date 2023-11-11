USE ASSIGNMENT;

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
