DROP TABLE if EXISTS `last_insert_id_table`;

CREATE TABLE `last_insert_id_table`(
`id`INT(11) NOT NULL AUTO_INCREMENT,
`col`VARCHAR(10) COLLATE UTF8MB4_UNICODE_CI DEFAULT NULL,
PRIMARY KEY (`id`))
ENGINE = INNODB AUTO_INCREMENT = 1 DEFAULT CHARSET= UTF8MB4 COLLATE=utf8mb4_unicode_ci;

insert INTO LAST_insert_id_table(col)
VALUES('1row'),('2row'),('3row');

SELECT*FROM last_insert_id_table;
/*차셋이랑 이노디비 안써도 자동생성 된다.*/