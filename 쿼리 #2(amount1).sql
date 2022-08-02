USE sqldb;
SELECT userID AS '사용자',SUM(price * amount) AS '총구매액' FROM buytbl 
GROUP BY userID;
/*아이디별 총 구매액 구하기*/