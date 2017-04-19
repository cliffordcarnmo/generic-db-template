CREATE TABLE IF NOT EXISTS productdetails(
	id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	products_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	`key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	value TEXT CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT fk_productdetails_products
	FOREIGN KEY(products_id)
	REFERENCES products(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_swedish_ci;
