CREATE TABLE buytbl
(num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
userID CHAR(8) NOT NULL,
prodName CHAR(6) NOT NULL,
FOREIGN KEY(userID) REFERENCES usertbl(userID));

DROP TABLE if EXISTS buytbl;
CREATE TABLE buytbl(
num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
userID CHAR(8) NOT NULL,
prodName CHAR(6) NOT NULL,
CONSTRAINT FK_usertbl_buytbl FOREIGN KEY(userID) REFERENCES usertbl(userID));
/*
 외래키의 이름을 지정할 필요가 없다면 references usertbl (userID)


*/