DROP PROCEDURE IF EXISTS getcontractdetails;
DELIMITER $$
CREATE PROCEDURE getcontractdetails(p_contracts_id CHAR(36))
BEGIN
	SELECT contracts.id AS contracts_id,contracts.name,contracts.price,contractdetails.products_id,contractdetails.amount FROM contracts INNER JOIN contractdetails ON (contracts.id = contractdetails.contracts_id) WHERE (contracts.id = p_contracts_id ) ORDER BY contracts.name ASC;
END$$
DELIMITER ;
