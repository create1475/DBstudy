

USE sqldb;
SELECT userID, SUM(price*amount) AS '총구매액'
FROM buytbl
GROUP BY userID
ORDER BY SUM(price*amount)DESC;

SELECT B.userID, U.userName,SUM(price*amount) AS '총구매액'
FROM buytbl B
INNER JOIN usertbl U
ON B.userID= U.userID
GROUP BY B.userID,U.userName
ORDER BY SUM(price*amount)DESC;

SELECT B.userID, U.userName,SUM(price*amount) AS '총구매액'
FROM buytbl B
RIGHT OUTER JOIN usertbl U
ON B.userID = U.userID
GROUP BY B.userID,U.userName
ORDER BY SUM(price*amount) DESC;

SELECT U.userID,U.userName,SUM(price*amount) AS '총구매액'
FROM buytbl B
RIGHT OUTER JOIN usertbl U
ON B.userID = U.userID
GROUP BY U.userID,U.userName
ORDER BY SUM(price*amount) DESC;


DELIMITER$$
CREATE PROCEDURE caseproc2()
BEGIN
	SELECT U.userName,U.userID,SUM(price*amount) AS '총구매액'
	FROM buytbl B
END$$

CALL caseproc2();



