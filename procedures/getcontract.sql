DROP PROCEDURE IF EXISTS getcontract;
DELIMITER $$
CREATE PROCEDURE getcontract(p_contracts_id CHAR(36))
BEGIN
	SELECT contracts.id AS contracts_id,contracts.name,contracts.price,contracts.expires FROM contracts WHERE (contracts.id = p_contracts_id) ORDER BY contracts.name ASC;
END$$
DELIMITER ;
