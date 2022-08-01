SELECT userID AS'사용자',SUM(price * amount) AS '총 구매액'
FROM buytbl
GROUP BY userID
HAVING SUM(price * amount) > 1000
ORDER BY SUM(price*amount);
/* having 절은 집계함수는 where절에 나타날 수 없음
	group by절 다음에 꼭 위치해야함
	총구매액이 적은 사용자부터 나타내려면 order by 절을 맨 끝에 사용
*/