USE sqldb;
SELECT ROW_NUMBER() over(ORDER BY height DESC)'키큰순위',userName,addr,height FROM usertbl;
/*row_number()함수를 이용 키가 큰 순으로 순위를 정할떄 */