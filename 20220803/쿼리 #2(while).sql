DROP PROCEDURE if EXISTS whileproc;
DELIMITER $$
CREATE PROCEDURE whileproc()
BEGIN
DECLARE i INT;
DECLARE hap INT;
	SET i = 1;
	SET hap = 0;
	
while (i <= 100) DO
SET hap = hap + i;
SET i=i+1;
END while;

SELECT hap;
END $$

CALL whileproc();
/*저기 위에 디리미터 꼭 띄어쓰기 해줘야 한다.*/