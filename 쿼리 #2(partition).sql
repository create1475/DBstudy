USE sqldb;
SELECT addr,ROW_NUMBER() over(PARTITION BY addr 
ORDER BY height DESC,userName ASC)
 '지역 별 키큰순위',userName,height FROM usertbl;
/*각 지역별로 순위 매기기*/