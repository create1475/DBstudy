DROP TABLE if EXISTS `last_insert_id_tabletwo`;

CREATE TABLE `last_insert_id_tabletwo` (
`id` INT(11) NOT NULL AUTO_INCREMENT,
`col` VARCHAR(10) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
PRIMARY KEY(`id`))
ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4
COLLATE=UTF8MB4_UNICODE_CI;

INSERT INTO last_insert_id_tabletwo(col)VALUE('1row');
INSERT INTO last_insert_id_tabletwo(col)VALUE('2row');
INSERT INTO last_insert_id_tabletwo(col)VALUE('3row');

SELECT * FROM LAST_INSERT_ID_tabletwo;
SELECT LAST_INSERT_ID();
/*select last insert id 문을 사용하면 마지막에 입력된 값 출력된다.*/