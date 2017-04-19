CREATE TABLE IF NOT EXISTS customerproducts(
	id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	customers_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	contractdetails_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	expires DATETIME NULL DEFAULT NULL,
	PRIMARY KEY(id),
	CONSTRAINT fk_customerproducts_contractdetails
	FOREIGN KEY(contractdetails_id)
	REFERENCES contractdetails(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	CONSTRAINT fk_customerproducts_customers
	FOREIGN KEY(customers_id)
	REFERENCES customers(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_swedish_ci;
