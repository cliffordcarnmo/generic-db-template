DROP PROCEDURE IF EXISTS getcontact;
DELIMITER $$
CREATE PROCEDURE getcontact(p_contacts_id CHAR(36))
BEGIN
	SELECT contacts.id AS contacts_id,contactdetails.id AS contactdetails_id,contacts.customers_id AS customers_id,contacts.loginemail,contacts.passwordhash,contacts.passwordsalt,contactdetails.name,contactdetails.customername,contactdetails.email,contactdetails.cellphone,contactdetails.telephone,contactdetails.telefax,contactdetails.address1,contactdetails.address2,contactdetails.zipcode,contactdetails.city,contactdetails.country FROM contacts INNER JOIN contactdetails ON (contacts.contactdetails_id = contactdetails.id) WHERE (contacts.id = p_contacts_id);
END$$
DELIMITER ;
