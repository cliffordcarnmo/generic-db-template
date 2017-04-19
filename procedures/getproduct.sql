DROP PROCEDURE IF EXISTS getproduct;
DELIMITER $$
CREATE PROCEDURE getproduct(p_products_id CHAR(36))
BEGIN
	SELECT products.id AS products_id,products.name FROM products WHERE (products.id = p_products_id);
END$$
DELIMITER ;
