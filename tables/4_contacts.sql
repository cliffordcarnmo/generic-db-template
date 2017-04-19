CREATE TABLE IF NOT EXISTS contacts(
	id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	customers_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	contactdetails_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	loginemail VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	passwordhash CHAR(32) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	passwordsalt CHAR(16) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_contacts_contactdetails
	FOREIGN KEY(contactdetails_id)
	REFERENCES contactdetails(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	CONSTRAINT fk_contacts_customers
	FOREIGN KEY(customers_id)
	REFERENCES customers(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_swedish_ci;
