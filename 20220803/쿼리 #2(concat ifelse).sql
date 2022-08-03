DROP PROCEDURE if EXISTS ifproc2;
USE employees;

DELIMITER $$
CREATE PROCEDURE ifproc2()
BEGIN
DECLARE hireDATE DATE;/*입사일 변수 선언*/
DECLARE curDATE DATE;/*오늘*/
DECLARE days INT;/*근무한 일수*/

SELECT hire_date INTO hireDate /*hire_date 열의 결과를 hireDATE에 대입*/
FROM employees.employees
WHERE eemployees
SET CURDATE = CURRENT_DATE();/*현재 날짜*/
SET days = DATEDIFF(CURDATE,hireDATE);/*날자의 차이 , 일단위*/

if(days/365) >= 5 then/*5년이 지났다면 */
SELECT CONCAT('입사한지' , days, '일이나 지났습니다. 축하합니다!');
ELSE
SELECT concat('입사한지' + days + '일밖에 안되었네요. 열심히 일하세요.');
end if;
end $$

call ifproc2();



