-- Create a store procedure that receives the first name of the person table as input and the last name as output
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