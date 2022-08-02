USE sqldb;
SELECT DENSE_RANK() over(ORDER BY height DESC) '키큰순위',
userName,addr,height FROM usertbl;
/*다시 전체 순위 데이터사용 갘은 크기의 데이터는 같은 등수로 처리*/