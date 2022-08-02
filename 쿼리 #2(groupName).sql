USE sqldb;
SELECT groupName,SUM(price*amount) AS '비용'FROM buytbl
GROUP BY groupName WITH ROLLUP;
/*분류별 합계 및 그 총합을 구하기 */