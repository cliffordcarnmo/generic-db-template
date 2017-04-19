DROP FUNCTION IF EXISTS assigncontactrole;
DELIMITER $$
CREATE FUNCTION assigncontactrole(p_contacts_id CHAR(36),p_roles_id CHAR(36)) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_contactroles_id CHAR(36);
	SELECT newid() INTO generated_contactroles_id;
	INSERT INTO contactroles(id,contacts_id,roles_id) VALUES (generated_contactroles_id,p_contacts_id,p_roles_id);
	RETURN generated_contactroles_id;
END$$
DELIMITER ;
