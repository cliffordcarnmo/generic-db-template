DROP PROCEDURE IF EXISTS removecontact;
DELIMITER $$
CREATE PROCEDURE removecontact(p_contacts_id CHAR(36))
BEGIN
	DECLARE store_contactdetails_id CHAR(36);
	DECLARE store_customername VARCHAR(255);
	SELECT contacts.contactdetails_id FROM contacts WHERE (contacts.id = p_contacts_id) INTO store_contactdetails_id;
	SELECT contactdetails.customername FROM contactdetails WHERE (contactdetails.id = store_contactdetails_id) INTO store_customername;
	DELETE FROM contactroles WHERE (contactroles.contacts_id = p_contacts_id);
	DELETE FROM contacts WHERE (contacts.id = p_contacts_id);
	-- contactdetails.customername determines if this is customer information or a regular contact account
	IF ISNULL(store_customername) THEN
		DELETE FROM contactdetails WHERE (contactdetails.id = store_contactdetails_id);
	END IF;
END$$
DELIMITER ;
