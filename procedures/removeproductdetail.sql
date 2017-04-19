DROP PROCEDURE IF EXISTS removeproductdetail;
DELIMITER $$
CREATE PROCEDURE removeproductdetail(p_productdetails_id CHAR(36))
BEGIN
	DELETE FROM productdetails WHERE (productdetails.id = p_productdetails_id);
END$$
DELIMITER ;
