DROP FUNCTION IF EXISTS createcustomer;
DELIMITER $$
CREATE FUNCTION createcustomer(p_contactdetails_id CHAR(36),p_contracts_id CHAR(36)) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_customers_id CHAR(36);
	SELECT newid() INTO generated_customers_id;
	INSERT INTO customers(id,contactdetails_id,contracts_id) VALUES (generated_customers_id,p_contactdetails_id,p_contracts_id);
	RETURN generated_customers_id;
END$$
DELIMITER ;
