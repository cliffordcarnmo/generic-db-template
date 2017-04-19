DROP PROCEDURE IF EXISTS updatecustomer;
DELIMITER $$
CREATE PROCEDURE updatecustomer(p_customers_id CHAR(36),p_customername VARCHAR(255),p_name VARCHAR(255),p_email VARCHAR(255),p_cellphone VARCHAR(255),p_telephone VARCHAR(255),p_telefax VARCHAR(255),p_address1 VARCHAR(255),p_address2 VARCHAR(255),p_zipcode VARCHAR(255),p_city VARCHAR(255),p_country VARCHAR(255))
BEGIN
	DECLARE store_contactdetails_id CHAR(36);
	SELECT customers.contactdetails_id FROM customers WHERE (id = p_customers_id) INTO store_contactdetails_id;
	UPDATE contactdetails SET customername = p_customername,name = p_name,email = p_email,cellphone = p_cellphone,telephone = p_telephone,telefax = p_telefax,address1 = p_address1,address2 = p_address2,zipcode = p_zipcode,city=p_city,country=p_country WHERE (contactdetails.id = store_contactdetails_id);
END$$
DELIMITER ;
