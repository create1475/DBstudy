USE sqldb;
SELECT COUNT(*) from usertbl;
/*보통 전체를 하면 기본키가 들어간다.*/

SELECT COUNT(mobile1)AS '휴대폰이 있는 사용자'
FROM usertbl;
/*이건 필드를 지정해서 이렇게 나옴*/

