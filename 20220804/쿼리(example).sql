DROP procedure if EXISTS ifproc;
DELIMITER $$
CREATE procedure ifproc()
BEGIN
	DECLARE var1 INT;
	set var1 = 100;
	if var1 = 100 then
	SELECT '100입니다.';
	else
		SELECT '100 이 아닙니다.';
	END if;
	END $$
	DELIMITER ;
	CALL ifproc();
	