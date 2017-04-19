CREATE TABLE IF NOT EXISTS contactroles(
	id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	contacts_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	roles_id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT fk_contactroles_contacts
	FOREIGN KEY(contacts_id)
	REFERENCES contacts(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	CONSTRAINT fk_contactroles_roles
	FOREIGN KEY(roles_id)
	REFERENCES roles(id)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_swedish_ci;
