USE sqldb;

CREATE TABLE backup_usertbl
(userID CHAR(8) NOT NULL PRIMARY KEY,
NAME VARCHAR(10) NOT NULL,
birthYear INT NOT NULL,
addr CHAR(2) NOT NULL,
mobile1 CHAR(3),
mobile2 CHAR(8),
height SMALLINT,
mDate DATE,
modType CHAR(2),
modDate DATE,
modUser VARCHAR(256)
);
