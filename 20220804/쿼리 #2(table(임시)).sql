USE employees;

CREATE TEMPORARY TABLE if NOT EXISTS temptbl (id INT, userName CHAR(7));
CREATE TEMPORARY TABLE if NOT EXISTS employees (id INT, userName cjar(7));
DESCRIBE temptbl;
DESCRIBE employees;

INSERT INTO temptbl VALUES (1, 'this');
INSERT INTO employees VALUES (2,'MariaDB');

SELECT * FROM temptbl;
SELECT * FROM employees;

USE employees;
SELECT * FROM temptbl;
SELECT * FROM employees;

DROP TABLE temptbl;

USE employess;
SELECT * FROM employees;

