DROP FUNCTION IF EXISTS createcontactdetail;
DELIMITER $$
CREATE FUNCTION createcontactdetail(p_customername VARCHAR(255),p_name VARCHAR(255),p_email VARCHAR(255),p_cellphone VARCHAR(255),p_telephone VARCHAR(255),p_telefax VARCHAR(255),p_address1 VARCHAR(255),p_address2 VARCHAR(255),p_zipcode VARCHAR(255),p_city VARCHAR(255),p_country VARCHAR(255)) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_contactdetails_id CHAR(36);
	SELECT newid() INTO generated_contactdetails_id;
	INSERT INTO contactdetails(id,customername,name,email,cellphone,telephone,telefax,address1,address2,zipcode,city,country) VALUES (generated_contactdetails_id,p_customername,p_name,p_email,p_cellphone,p_telephone,p_telefax,p_address1,p_address2,p_zipcode,p_city,p_country);
	RETURN generated_contactdetails_id;
END$$
DELIMITER ;
