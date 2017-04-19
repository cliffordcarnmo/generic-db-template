DROP PROCEDURE IF EXISTS updatecontact;
DELIMITER $$
CREATE PROCEDURE updatecontact(p_contacts_id CHAR(36),p_name VARCHAR(255),p_email VARCHAR(255),p_cellphone VARCHAR(255),p_telephone VARCHAR(255),p_telefax VARCHAR(255),p_address1 VARCHAR(255),p_address2 VARCHAR(255),p_zipcode VARCHAR(255),p_city VARCHAR(255),p_country VARCHAR(255),p_loginemail VARCHAR(255),p_passwordhash VARCHAR(255),p_passwordsalt VARCHAR(255))
BEGIN
	UPDATE contactdetails SET name=p_name,email=p_email,cellphone=p_cellphone,telephone=p_telephone,telefax=p_telefax,address1=p_address1,address2=p_address2,zipcode=p_zipcode,city=p_city,country=p_country WHERE (id IN(SELECT contactdetails_id FROM contacts WHERE (id = p_contacts_id)));
	IF NOT ISNULL(p_loginemail) THEN
		UPDATE contacts SET loginemail=p_loginemail,passwordhash=p_passwordhash,passwordsalt=p_passwordsalt WHERE (contacts.id = p_contacts_id);
	END IF;
END$$
DELIMITER ;
