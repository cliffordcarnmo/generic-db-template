CREATE TABLE IF NOT EXISTS products(
	id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	name VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_swedish_ci;
