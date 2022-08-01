SELECT groupName,SUM(price*amount) AS '비용'
FROM buytbl
GROUP BY groupName
WITH ROLLUP;
/* 총합 또는 중간 합계가 필요하면 with rollup문을 사용한다.*/