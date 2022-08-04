USE tabledb;
ALTER TABLE usertbl
ADD homepage VARCHAR(30)
DEFAULT 'http://www,hanbit.co.kr'
NULL;
