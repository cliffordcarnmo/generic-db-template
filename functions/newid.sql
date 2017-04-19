DROP FUNCTION IF EXISTS newid;
DELIMITER $$
CREATE FUNCTION newid() RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE var_char CHAR(1);
	DECLARE var_count INT DEFAULT 0;
	DECLARE var_guid CHAR(36) DEFAULT '';
	WHILE var_count < 36 DO
		IF (var_count = 8 OR var_count = 13 OR var_count = 18 OR var_count = 23) THEN
			SET var_guid = CONCAT(var_guid, "-");
		ELSE
			IF (var_count = 14) THEN
				SET var_guid = CONCAT(var_guid, "4");
			ELSE
				IF (var_count = 19) THEN
					SET var_char = HEX(FLOOR(RAND()*4) + 8);
				ELSE
					SET var_char = HEX(FLOOR(RAND()*16));
				END IF;
				SET var_guid = CONCAT(var_guid, var_char);
			END IF;
		END IF;
		SET var_count = var_count + 1;
	END WHILE;
	RETURN LOWER(var_guid);
END$$
DELIMITER ;
