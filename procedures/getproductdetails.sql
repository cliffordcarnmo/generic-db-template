DROP PROCEDURE IF EXISTS getproductdetails;
DELIMITER $$
CREATE PROCEDURE getproductdetails(p_products_id CHAR(36))
BEGIN
	SELECT products.id AS products_id,productdetails.id as productdetails_id,productdetails.key,productdetails.value FROM products INNER JOIN productdetails ON (products.id = productdetails.products_id) WHERE (productdetails.products_id = p_products_id);
END$$
DELIMITER ;
