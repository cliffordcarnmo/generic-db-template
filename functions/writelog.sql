DROP FUNCTION IF EXISTS writelog;
DELIMITER $$
CREATE FUNCTION writelog(p_event VARCHAR(255)) RETURNS CHAR(36) CHARSET utf8
BEGIN
	DECLARE generated_logs_id CHAR(36);
	SELECT newid() INTO generated_logs_id;
	INSERT INTO logs (id,event,created) VALUES (generated_logs_id,p_event,NOW());
	RETURN generated_logs_id;
END$$
DELIMITER ;
