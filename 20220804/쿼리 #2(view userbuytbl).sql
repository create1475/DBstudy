CREATE VIEW V_userbuytbl
AS
SELECT U.userID,u.Name,B.prodName,U.addr,CONCAT(U.mobile1,U.mobile2) AS '연락처'
FROM usertbl U
INNER JOIN buytbl B
ON U.userID = B.userID;

SELECT * FROM V_userbuytbl WHERE Name = '김범수';


