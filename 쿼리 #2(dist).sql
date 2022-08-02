USE sqldb;
SELECT addr, userName,height AS '키',
(CUME_DIST() over (PARTITION BY addr ORDER BY height DESC)) *100 AS '누적인원 백분율%'
FROM usertbl;
