DROP PROCEDURE IF EXISTS getcontracts;
DELIMITER $$
CREATE PROCEDURE getcontracts()
BEGIN
	SELECT contracts.id AS contracts_id,contracts.name,contracts.price,contracts.expires FROM contracts ORDER BY contracts.name ASC;
END$$
DELIMITER ;
