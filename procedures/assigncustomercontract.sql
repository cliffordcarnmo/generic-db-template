DROP PROCEDURE IF EXISTS assigncustomercontract;
DELIMITER $$
CREATE PROCEDURE assigncustomercontract(p_customers_id CHAR(36),p_contracts_id CHAR(36))
BEGIN
	UPDATE customers SET customers.contracts_id = p_contracts_id WHERE (customers.id = p_customers_id);
END$$
DELIMITER ;
