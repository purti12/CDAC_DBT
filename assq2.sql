use assignment;
select*from name1;
DELIMITER //

CREATE PROCEDURE GetLastNamm(IN input_first_name VARCHAR(35), OUT output_last_name VARCHAR(35))
BEGIN
    SELECT lastname INTO output_last_name
    FROM Name1
    WHERE firstname = input_first_name;
END //

DELIMITER ;
CALL GetLastNamm('purti', @output_last_name);
select @output_last_name;