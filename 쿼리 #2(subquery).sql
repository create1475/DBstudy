USE sqldb;
SELECT userName,height
FROM usertbl WHERE height = (SELECT MAX(height) FROM usertbl)
OR
height = (SELECT MIN(height) FROM usertbl);
/*서브쿼리 조합해서 다시 실행 제일 큰 사람과 제일 작은사람 출력*/