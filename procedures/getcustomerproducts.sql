DROP PROCEDURE IF EXISTS getcustomerproducts;
DELIMITER $$
CREATE PROCEDURE getcustomerproducts(p_customers_id CHAR(36))
BEGIN
	SELECT customerproducts.id AS customerproducts_id,customerproducts.customers_id,customerproducts.contractdetails_id,customerproducts.expires FROM customerproducts WHERE (customerproducts.customers_id = p_customers_id);
END$$
DELIMITER ;
