DROP PROCEDURE IF EXISTS getcontactroles;
DELIMITER $$
CREATE PROCEDURE getcontactroles(p_contacts_id CHAR(36))
BEGIN
	SELECT contactroles.id as contactroles_id,roles.id as roles_id,roles.name FROM roles INNER JOIN contactroles ON (roles.id = contactroles.roles_id) WHERE (contactroles.contacts_id = p_contacts_id) ORDER BY roles.name ASC;
END$$
DELIMITER ;
