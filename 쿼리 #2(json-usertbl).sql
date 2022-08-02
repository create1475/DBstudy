USE sqldb;
SET @JSON = '{"usertbl" : 
[
{"name":"강호동" , "height":182},
{"name":"이휘재" , "height":180},
{"name":"남희석" , "height":180},
{"name":"박수홍" , "height":183}
]
}';
SELECT JSON_VALID(@JSON) AS JSON_VALID;
SELECT JSON_SEARCH(@JSON,'one','남희석') AS JSON_SEARCH;
SELECT JSON_EXTRACT(@JSON,'$.usertbl[2].name') AS JSON_EXTRACT;
