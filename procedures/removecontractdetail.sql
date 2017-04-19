DROP PROCEDURE IF EXISTS removecontractdetail;
DELIMITER $$
CREATE PROCEDURE removecontractdetail(p_contractdetails_id CHAR(36))
BEGIN
	DELETE FROM contractdetails WHERE (contractdetails.id = p_contractdetails_id);
END$$
DELIMITER ;
