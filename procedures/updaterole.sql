DROP PROCEDURE IF EXISTS updaterole;
DELIMITER $$
CREATE PROCEDURE updaterole(p_roles_id CHAR(36),p_name VARCHAR(255))
BEGIN
	UPDATE roles SET name = p_name WHERE (roles.id = p_roles_id);
END$$
DELIMITER ;
