USE sqldb;
SELECT userID AS '사용자',SUM(price*amount) AS '총구매액'
FROM buytbl
GROUP BY userID
HAVING SUM(price * amount) > 1000;
/*총 구매액이 1000 이상인 회원에게만 사은품을 증정*/
