DROP PROCEDURE IF EXISTS getcustomercontacts;
DELIMITER $$
CREATE PROCEDURE getcustomercontacts(p_customers_id CHAR(36))
BEGIN
	SELECT contacts.id AS contacts_id,contacts.loginemail,contacts.passwordhash,contacts.passwordsalt,contactdetails.name,contactdetails.customername,contactdetails.email,contactdetails.cellphone,contactdetails.telephone,contactdetails.telefax,contactdetails.address1,contactdetails.address2,contactdetails.zipcode,contactdetails.city,contactdetails.country FROM contacts INNER JOIN contactdetails ON (contacts.contactdetails_id = contactdetails.id) WHERE (contacts.customers_id = p_customers_id);
END$$
DELIMITER ;
