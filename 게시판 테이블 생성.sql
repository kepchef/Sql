#날짜:2020/12/07
#이름:김은표
#내용:게시판 테이블 작성하기

#약관테이블 생성
CREATE TABLE `JBOARD_TERMS` (
	`terms` TEXT,
	`privacy` TEXT
);
	
#회원테이블 생성
CREATE TABLE `JBOARD_MEMBER` (
	`uid` 	VARCHAR(20) PRIMARY KEY,
	`pass` 	VARCHAR(255),
	`name` 	VARCHAR(20),
	`nick` 	VARCHAR(20) UNIQUE,
	`email` 	VARCHAR(100),
	`hp`		CHAR(13) UNIQUE, 
	`grade` 	TINYINT DEFAULT 2,
	`zip` 	CHAR(5),
	`addr1` 	VARCHAR(100),
	`addr2` 	VARCHAR(100),
	`regip` 	VARCHAR(20),
	`rdate` 	DATETIME
);
#게시판테이블 생성
CREATE TABLE `JBOARD_ARTICLE` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,JBOARD_TERMS
	`cate`		VARCHAR(10) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`uid`			VARCHAR(20),
	`regip`		VARCHAR(100),
	`rdate`		DATETIME
);