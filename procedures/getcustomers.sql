DROP PROCEDURE IF EXISTS getcustomers;
DELIMITER $$
CREATE PROCEDURE getcustomers()
BEGIN
	SELECT customers.id AS customers_id,customers.contracts_id,customers.contactdetails_id,contactdetails.customername,contactdetails.name,contactdetails.email,contactdetails.cellphone,contactdetails.telephone,contactdetails.telephone,contactdetails.telefax,contactdetails.address1,contactdetails.address2,contactdetails.zipcode,contactdetails.city,contactdetails.country FROM customers INNER JOIN contactdetails ON (customers.contactdetails_id = contactdetails.id) ORDER BY contactdetails.customername ASC;
END$$
DELIMITER ;
