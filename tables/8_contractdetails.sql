CREATE TABLE IF NOT EXISTS contractdetails(
	id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	contracts_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	products_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	amount INT(10) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT fk_contractdetails_contracts
	FOREIGN KEY(contracts_id)
	REFERENCES contracts(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	CONSTRAINT fk_contractdetails_products
	FOREIGN KEY(products_id)
	REFERENCES products(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_swedish_ci;
