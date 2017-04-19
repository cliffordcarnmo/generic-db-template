DROP PROCEDURE IF EXISTS getroles;
DELIMITER $$
CREATE PROCEDURE getroles()
BEGIN
	SELECT roles.id AS roles_id,roles.name FROM roles ORDER BY roles.name ASC;
END$$
DELIMITER ;
