CREATE TABLE IF NOT EXISTS contactdetails(
	id CHAR(36) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
	customername VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	name VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	email VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	cellphone VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	telephone VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	telefax VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	address1 VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	address2 VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	zipcode VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	city VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	country VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NULL DEFAULT NULL,
	PRIMARY KEY(id)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_swedish_ci;