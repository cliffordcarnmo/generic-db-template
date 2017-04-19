DROP PROCEDURE IF EXISTS getproducts;
DELIMITER $$
CREATE PROCEDURE getproducts()
BEGIN
	SELECT products.id AS products_id,products.name FROM products ORDER BY products.name ASC;
END$$
DELIMITER ;
