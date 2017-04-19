DROP FUNCTION IF EXISTS createcontact;
DELIMITER $$
CREATE FUNCTION createcontact(p_customers_id CHAR(36),p_contactdetails_id CHAR(36),p_loginemail CHAR(36),p_password CHAR(36)) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_contacts_id CHAR(36);
	SELECT newid() INTO generated_contacts_id;
	INSERT INTO contacts(id,customers_id,contactdetails_id,loginemail,passwordhash,passwordsalt) VALUES (generated_contacts_id,p_customers_id,p_contactdetails_id,p_loginemail,p_password,p_password);
	RETURN generated_contacts_id;
END$$
DELIMITER ;
