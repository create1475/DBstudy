USE sqldb;
CREATE VIEW V_userbuytbl
AS
SELECT U.userID AS 'USER ID',U.userName AS 'USER NAME',B.prodName AS 'PRODECT NAME',U.addr,
CONCAT(U.mobile1,U.mobile2) AS 'MOBILE PHONE'
FROM usertbl U
INNER JOIN buytbl B
ON U.userID = B.userID;

SELECT `USER ID`,`USER NAME` FROM v_userbuytbl;

