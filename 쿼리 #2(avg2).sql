USE sqldb;
SELECT userID,AVG(amount) AS '평균 구매 개수' FROM buytbl
GROUP BY userID;
/*그룹 바이 사용해서 평균적으로 몇개 구매했는지 확인*/