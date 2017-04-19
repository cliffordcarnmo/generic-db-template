CREATE TABLE IF NOT EXISTS customers(
	id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	contactdetails_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	contracts_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	PRIMARY KEY(id),
	CONSTRAINT fk_customers_contactdetails
	FOREIGN KEY(contactdetails_id)
	REFERENCES contactdetails(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	CONSTRAINT fk_customers_contracts
	FOREIGN KEY(contracts_id)
	REFERENCES contracts(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_swedish_ci;
