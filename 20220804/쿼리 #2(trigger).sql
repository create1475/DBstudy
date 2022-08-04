USE sqldb;
CREATE TABLE if NOT EXISTS testtbl (id INT, txt VARCHAR(10));
INSERT INTO testtbl VALUES(1,'이엑스아이다');
INSERT INTO testtbl VALUES(2,'애프터스쿨');
INSERT INTO testtbl VALUES(3,'에이오에이');

DROP TRIGGER if EXISTS testtrg;
DELIMITER //
CREATE TRIGGER testtrg
	AFTER delete
	ON testtbl
	FOR each row
	
	begin
	SET @msg = '가수 그룹이 삭제됨';
	END //

	
	SET @msg='';
	INSERT INTO testtbl VALUES(4,'나인뮤지스');
	SELECT @msg;
	UPDATE testtbl SET txt = '에이핑크' WHERE id=3;
	SELECT @msg;
	DELETE FROM testtbl WHERE id = 3;
	SELECT @msg;
	
