USE sqldb;
SET @myVar1 = 3;
PREPARE myQuery FROM 'select userName, height from userTBL order by height limit?';
EXECUTE myQuery USING @myVar1;
/*설정한다 3개를 미리 쿼리를 실행해주세요 이름 키 를 유저테이블에서 지한없이 아래서부터 3명? 이걸 execute 만나서 한거번에 처리실행해라.*/