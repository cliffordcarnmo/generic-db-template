DROP FUNCTION IF EXISTS createcontract;
DELIMITER $$
CREATE FUNCTION createcontract(p_name VARCHAR(255),p_price INT(10),p_expires DATETIME) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_contracts_id CHAR(36);
	SELECT newid() INTO generated_contracts_id;
	INSERT INTO contracts(id,name,price,expires) VALUES (generated_contracts_id,p_name,p_price,p_expires);
	RETURN generated_contracts_id;
END$$
DELIMITER ;
