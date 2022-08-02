SELECT SPACE(5);
/*길이 만큼의 공백 반환*/
SELECT SUBSTRING('ohseojun',5,6);/*문자열, 시작위치,길이*/
/*시작 위치부터 길이만큼 문자 반환 */
SELECT SUBSTRING_INDEX('ohseojun','o',2);
/*문자열에서  o 를 찾아서 2번쨰꺼부터 다 지운다.*/