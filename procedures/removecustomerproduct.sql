DROP PROCEDURE IF EXISTS removecustomerproduct;
DELIMITER $$
CREATE PROCEDURE removecustomerproduct(p_customerproducts_id CHAR(36))
BEGIN
	DELETE FROM customerproducts WHERE (customerproducts.id = p_customerproducts_id);
END$$
DELIMITER ;
