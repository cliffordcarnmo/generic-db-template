DROP FUNCTION IF EXISTS assigncontractdetail;
DELIMITER $$
CREATE FUNCTION assigncontractdetail(p_contracts_id CHAR(36),p_products_id CHAR(36),p_amount INT(10)) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_contractdetails_id CHAR(36);
	SELECT newid() INTO generated_contractdetails_id;
	INSERT INTO contractdetails(id,contracts_id,products_id,amount) VALUES (generated_contractdetails_id,p_contracts_id,p_products_id,p_amount);
	RETURN generated_contractdetails_id;
END$$
DELIMITER ;
