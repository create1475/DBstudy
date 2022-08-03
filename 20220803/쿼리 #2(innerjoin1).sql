USE sqldb;
SELECT C.clubName,C.roomNo, S.stdName, S.addr
FROM stdtbl s 
INNER JOIN stdclubtbl SC ON SC.stdName = S.stdName
INNER JOIN clubtbl C ON SC.clubName = C.clubName
ORDER BY C.clubName;
/*동아리 기준으로 가입한 학생의 목록*/