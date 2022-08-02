USE sqldb;
SELECT userID AS '사용자',SUM(price * amount) AS '총 구매액'
FROM buytbl
GROUP BY userID
HAVING SUM(price * amount) > 1000
ORDER BY SUM(price * amount);
/*총 구매액이 적은 회원 순으로 정렬*/
