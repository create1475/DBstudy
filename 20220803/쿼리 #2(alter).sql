DROP TABLE if EXISTS usertbl;
CREATE TABLE usertbl(
userID CHAR(8) NOT NULL,
userName VARCHAR(10) NOT NULL,
birthYear INT NOT NULL);

ALTER TABLE usertbl
ADD CONSTRAINT PK_usertbl_userID
PRIMARY KEY (userID);

/*create table 문 안에 보통 위치 
alter table 문 사용해 수정 구문 사용 가능
두개의 열을 같이 기본키로 사용할 경우, 
show index from 테이블_이름 -- 설정확인가능
*/