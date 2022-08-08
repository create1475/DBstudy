USE servletex;

CREATE TABLE t_board(

	articleNO INT(100) UNSIGNED NOT NULL,
	parentNO INT(100) DEFAULT 0,
	title VARCHAR(500) NOT NULL,
	content VARCHAR(4000),
	imageFileName VARCHAR(30),
	writeDate DATETIME DEFAULT CURRENT_TIMESTAMP,
	id VARCHAR(20),
	FOREIGN KEY(id) references t_member(id),
	PRIMARY KEY(`articleNO`));
	
	