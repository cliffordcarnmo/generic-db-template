DROP PROCEDURE IF EXISTS getrole;
DELIMITER $$
CREATE PROCEDURE getrole(p_roles_id CHAR(36))
BEGIN
	SELECT roles.id AS roles_id,roles.name FROM roles WHERE (roles.id = p_roles_id);
END$$
DELIMITER ;
