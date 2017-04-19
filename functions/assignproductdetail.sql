DROP FUNCTION IF EXISTS assignproductdetail;
DELIMITER $$
CREATE FUNCTION assignproductdetail(p_products_id CHAR(36),p_key VARCHAR(255),p_value TEXT) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_productdetails_id CHAR(36);
	SELECT newid() INTO generated_productdetails_id;
	INSERT INTO productdetails(id,products_id,`key`,`value`) VALUES (generated_productdetails_id,p_products_id,p_key,p_value);
	RETURN generated_productdetails_id;
END$$
DELIMITER ;
