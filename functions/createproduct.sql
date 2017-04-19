DROP FUNCTION IF EXISTS creatproduct;
DELIMITER $$
CREATE FUNCTION createproduct(p_name VARCHAR(255)) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_products_id CHAR(36);
	SELECT newid() INTO generated_products_id;
	INSERT INTO products(id,name) VALUES (generated_products_id,p_name);
	RETURN generated_products_id;
END$$
DELIMITER ;
