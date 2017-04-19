DROP FUNCTION IF EXISTS assigncustomerproduct;
DELIMITER $$
CREATE FUNCTION assigncustomerproduct(p_customers_id CHAR(36),p_contractdetails_id CHAR(36),p_expires DATETIME) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_customerproducts_id CHAR(36);
	SELECT newid() INTO generated_customerproducts_id;
	INSERT INTO customerproducts(id,customers_id,contractdetails_id,expires) VALUES (generated_customerproducts_id,p_customers_id,p_contractdetails_id,p_expires);
	RETURN generated_customerproducts_id;
END$$
DELIMITER ;
