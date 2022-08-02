USE sqldb;
SELECT JSON_OBJECT('name',userName,'height',height) AS 'json 값'
FROM usertbl WHERE height>=180;
/*키가 180 이상인 사람의 이름과 키를 json 데이터로 변환*/