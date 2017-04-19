DROP PROCEDURE IF EXISTS getcustomercontract;
DELIMITER $$
CREATE PROCEDURE getcustomercontract(p_customers_id CHAR(36))
BEGIN
	SELECT contracts.id AS contracts_id,contracts.name,contracts.price,contracts.expires FROM customers INNER JOIN contracts ON (customers.contracts_id = contracts.id) WHERE (customers.id = p_customers_id);
END$$
DELIMITER ;
