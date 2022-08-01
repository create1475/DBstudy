USE sqldb;
create TmembertblABLE membertbl (SELECT userID,userName , addr FROM usertbl LIMIT 3);

ALTER TABLE memebertbl
ADD CONSTRAINT pk_memberTBL PRIMARY KEY (userID);

SELECT * FROM membertbl;

