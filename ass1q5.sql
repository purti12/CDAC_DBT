use dac23;
select * from maxcustomer;

DELIMITER //
CREATE PROCEDURE customerCount()
BEGIN
    SELECT COUNT(*) AS Totalcustomer FROM maxcustomer;
END //

DELIMITER ;

call  customerCount();