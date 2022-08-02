USE sqldb;
SELECT U.userID, U.userName, B.prodName, U.addr, CONCAT(U.mobile1, U.mobile2) AS '연락처'
FROM usertbl U
INNER JOIN buytbl B ON U.userID = B.userID
ORDER BY U.userID;
/*전체 회원이 구매한 목록 모두 출력*/
