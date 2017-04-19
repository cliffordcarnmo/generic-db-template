DROP PROCEDURE IF EXISTS getremainingcustomerproducts;
DELIMITER $$
CREATE PROCEDURE getremainingcustomerproducts(p_customers_id CHAR(36))
BEGIN
	SELECT COUNT(*) FROM customerproducts WHERE (customerproducts.customers_id = p_customers_id);
END$$
DELIMITER ;
