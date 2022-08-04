USE sqldb;
DROP TRIGGER if EXISTS backusertbl_updatetrg;

DELIMITER //
CREATE TRIGGER backusertbl_updatetrg
	AFTER update
	IN usertbl
	FOR EACH row
	
BEGIN
	INSERT INTO backup_usertbl VALUES(OLD.userID,OLD.name,OLD.birthYear,OLD.addr,OLD.mobile1,OLD.mobile2,OLD.height,OLD.mDate,'수정',CURDATE());
	END //
DELIMITER ;
DROP trgger if EXISTS backusertbl_deletetrg;
CREATE TRIGGER backusertbl_deletetrg
	AFTER delete
	ON usertbl
	FOR EACH row
BEGIN
	INSERT INTO backup_usertbl VALUES(OLD.userId,OLD.name,OLD.birthYear,OLD.addr,OLD.mobile1,OLD.mobile2,OLD.height,OLD.mDate,'삭제',CURDATE());
	END //
DELIMITER ;
