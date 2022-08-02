USE sqldb;
SELECT AVG(amount) AS '평균 구매 개수' FROM buytbl;
/*전체적으로 한번 구매할 때마다 평균 몇개 구매했는지 조회*/