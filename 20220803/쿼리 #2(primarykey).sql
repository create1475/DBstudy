DROP TABLE if EXISTS usertbl;
CREATE TABLE usertbl(
userID CHAR(8) not NULL,
userName VARCHAR(10) NOT NULL,
birthYear INT NOT NULL,
CONSTRAINT PRIMARY KEY PK_usertbl_userID (userID));

/*primary key 기본키 제약조건 */