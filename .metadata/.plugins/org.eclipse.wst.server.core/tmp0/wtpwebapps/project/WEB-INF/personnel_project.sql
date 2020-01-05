SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS reply;
DROP TABLE IF EXISTS board;
DROP TABLE IF EXISTS commute;
DROP TABLE IF EXISTS flow;
DROP TABLE IF EXISTS note;
DROP TABLE IF EXISTS vacation;
DROP TABLE IF EXISTS member;




/* Create Tables */

CREATE TABLE board
(
	num int(100) NOT NULL,
	id varchar(20) NOT NULL,
	boardtype int(100) NOT NULL,
	subject varchar(200),
	content varchar(5000),
	subtype varchar(10),
	file1 varchar(100),
	PRIMARY KEY (num)
);


CREATE TABLE commute
(
	num int(100) NOT NULL,
	id varchar(20) NOT NULL,
	empin varchar(15),
	empout varchar(15),
	feel varchar(100),
	content varchar(4000),
	PRIMARY KEY (num)
);


CREATE TABLE flow
(
	num int(10) NOT NULL,
	jan int(20),
	feb int(20),
	mar int(20),
	apr int(20),
	may int(20),
	jun int(20),
	jul int(20),
	aug int(20),
	sep int(20),
	oct int(20),
	nov int(20),
	dece int(20),
	PRIMARY KEY (num)
);


CREATE TABLE member
(
	id varchar(20) NOT NULL,
	name varchar(20),
	pass varchar(20),
	dept varchar(20),
	position varchar(20),
	birthday varchar(20),
	hiredate varchar(20),
	tel varchar(20),
	picture varchar(100),
	vote varchar(100),
	membertype int(100) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE note
(
	num int(100) NOT NULL,
	id varchar(20) NOT NULL,
	sendid varchar(100),
	recvid varchar(100),
	subject varchar(100),
	content varchar(300),
	senddate varchar(15),
	PRIMARY KEY (num)
);


CREATE TABLE reply
(
	replynum int(100) NOT NULL,
	id varchar(20) NOT NULL,
	num int(100) NOT NULL,
	content varchar(300),
	PRIMARY KEY (replynum)
);


CREATE TABLE vacation
(
	num int(100) NOT NULL,
	id varchar(20) NOT NULL,
	startdate varchar(100),
	enddate varchar(100),
	state varchar(1),
	PRIMARY KEY (num)
);



/* Create Foreign Keys */

ALTER TABLE reply
	ADD FOREIGN KEY (num)
	REFERENCES board (num)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE board
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE commute
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE note
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE reply
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE vacation
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



