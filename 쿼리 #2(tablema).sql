USE sqlDB;
CREATE TABLE testTBL5
(SELECT emp_no,first_name, last_name FROM employees.employees);
