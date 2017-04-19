DROP PROCEDURE IF EXISTS removerole;
DELIMITER $$
CREATE PROCEDURE removerole(p_roles_id CHAR(36))
BEGIN
	DELETE FROM contactroles WHERE (contactroles.roles_id = p_roles_id);
	DELETE FROM roles WHERE (roles.id = p_roles_id);
END$$
DELIMITER ;
