DROP PROCEDURE IF EXISTS removecontactrole;
DELIMITER $$
CREATE PROCEDURE removecontactrole(p_contactroles_id CHAR(36))
BEGIN
	DELETE FROM contactroles WHERE (contactroles.id = p_contactroles_id);
END$$
DELIMITER ;
