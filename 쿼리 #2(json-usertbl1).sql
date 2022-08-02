USE sqldb;
SET@json='{ "userTBL" :
[
{"name":"강호동", "height":182},
{"name":"이휘재", "height":180},
{"name":"남희석", "height":180},
{"name":"박수홍", "height":183}
]
}';

SELECT JSON_INSERT(@JSON,'$.usertbl[0].mDate','2019-09-09') AS JSON_INSERT;
SELECT JSON_REPLACE(@JSON,'$.usertbl[0].name','토마스') AS JSON_REPLACE;
SELECT JSON_REMOVE(@JSON,'$.usertbl[0]') AS JSON_REMOVE;
 