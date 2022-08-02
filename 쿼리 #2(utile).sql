USE sqldb;
SELECT NTILE(2) over(ORDER BY height DESC)'반번호',userName,addr,height FROM usertbl;
/*ntile 나눌 그룹 개수 테이터 크시 순으로 세운 뒤 그룹을 나눌 때 사용
나누어 떨어지지 않는 경우 순서대로 배정 */