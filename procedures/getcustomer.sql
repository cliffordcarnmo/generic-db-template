DROP PROCEDURE IF EXISTS getcustomer;
DELIMITER $$
CREATE PROCEDURE getcustomer(p_customers_id CHAR(36))
BEGIN
	SELECT customers.id AS customers_id,customers.contracts_id,customers.contactdetails_id,contactdetails.customername,contactdetails.name,contactdetails.email,contactdetails.cellphone,contactdetails.telephone,contactdetails.telephone,contactdetails.telefax,contactdetails.address1,contactdetails.address2,contactdetails.zipcode,contactdetails.city,contactdetails.country FROM customers INNER JOIN contactdetails ON (customers.contactdetails_id = contactdetails.id) WHERE (customers.id = p_customers_id) ORDER BY contactdetails.customername ASC;
END$$
DELIMITER ;
