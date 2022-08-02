USE sqldb;
SELECT addr,userName,height AS '키',height - (FIRST_VALUE(height) over (PARTITION BY addr ORDER BY height DESC)) AS '지역별 최대키와 차이'  FROM usertbl;
/*지역 별로 가장 키가 큰 사람과의 차이
*/
