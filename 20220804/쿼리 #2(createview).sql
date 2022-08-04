USE tabledb;

CREATE VIEW V_usertbl
AS SELECT userID,Name,addr FROM usertbl;
SELECT * FROM V_usertbl;
