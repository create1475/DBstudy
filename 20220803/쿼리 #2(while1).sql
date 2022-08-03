DROP PROCEDURE if EXISTS whileproc2;
DELIMITER $$
CREATE PROCEDURE whileproc2()
BEGIN
	DECLARE i INT;
	DECLARE hap INT;
	SET i = 1;
	SET hap = 0;
	
	mywhile: while (i<=100) do
	if(i%7 = 0) then
		SET i = i+1;
		iterate mywhile;
		END if;
		
		SET hap = hap + i;
		if (hap > 1000) then 
		leave mywhile;
		END if;
		
	SET i = i + 1;
	END while;
	
	SELECT hap;
	END $$
	
	CALL whileproc2();
	
	