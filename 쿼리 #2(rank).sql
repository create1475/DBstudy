USE sqldb;
SELECT RANK() over(ORDER BY height DESC)'키큰순위',userName,addr,height FROM usertbl;
/* 2등이 두명이면 3등은 건너뛰고 4등부터 시작*/