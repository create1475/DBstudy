DROP TRIGGER if EXISTS prodtrg;
DELIMITER // 
CREATE TRIGGER prodtrg
	AFTER UPDATE
	ON prodtbl
	FOR each row
	begin
	DECLARE orderamount INT;
	
	SET orderamount = OLD.account - NEW.account;
	INSERT INTO delivertbl(prodName,ACCOUNT)
	VALUES(NEW.prodName,orderAmount);
	
END //

INSERT INTO ordertbl VALUES (NULL,'JOHN','배',5);

SELECT * FROM ordertbl;
SELECT * FROM prodtbl;
SELECT * FROM delivertbl;

ALTER TABLE delivertbl CHANGE prodName productName VARCHAR(5);

INSERT INTO ordertbl VALUES (NULL,'DANG','사과',9);

SELECT * FROM ordertbl;
SELECT * FROM prodtbl;
SELECT * FROM delivertbl;

