DROP FUNCTION IF EXISTS createrole;
DELIMITER $$
CREATE FUNCTION createrole(p_name VARCHAR(255)) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_roles_id CHAR(36);
	SELECT newid() INTO generated_roles_id;
	INSERT INTO roles(id,name) VALUES (generated_roles_id,p_name);
	RETURN generated_roles_id;
END$$
DELIMITER ;
