SELECT addr, MAX(height) FROM usertbl GROUP BY addr;

WITH cte_usertbl(addr,maxheight)
AS (SELECT addr, MAX(height) FROM usertbl GROUP BY addr)
SELECT AVG(maxheight * 1.0) AS '각 지역별 최고키의 평균' FROM cte_usertbl;
/*회원 테이블에서 각 지역별 가장 큰 키를 뽑아 평균 구하기*/