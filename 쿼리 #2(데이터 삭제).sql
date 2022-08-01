USE sqldb;
CREATE TABLE bigTbl1 (SELECT * fROM employees.employees);
CREATE TABLE bigTbl2 (SELECT * FROM employees.employees);
CREATE TABLE bigTbl3 (SELECT * FROM employees.employees);

DELETE FROM bigTbl1;
DROP TABLE bigtbl2;
TRUNCATE TABLE bigtbl3;/*메타파일은 남겨놓고 삭제*/
