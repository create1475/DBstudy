
SELECT U.userID,U.Name,B.prodName,U.addr,CONCAT(U.mobile1,U.mobile2)AS mobile,U.mDate
FROM usertbl U
INNER JOIN buytbl B
ON U.userID = B.userID;

USE sqldb;


INSERT INTO V_userbuytbl
VALUES('PKL','박경리','운동화','경기','00000000000','2023-2-2');

DROP TABLE if EXISTS buytbl,usertbl;
SELECT * FROM v_userbuytbl;
