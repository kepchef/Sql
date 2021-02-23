#날짜:2020/11/20
#이름:김은표
#내용: SQL 수행평가

#실습1
CREATE TABLE `Booklist` (
	`bookid`			INT PRIMARY KEY AUTO_INCREMENT,
	`bookname`		VARCHAR(20),
	`publisher`		VARCHAR(20),
	`price`			INT
);s
#실습2
CREATE TABLE `Publisher` (
	`publname`	VARCHAR(10),
	`staffname`	VARCHAR(20),
	`hp`			CHAR(13)
);
#실습3
CREATE TABLE `Customer` (
	`custid`		INT PRIMARY KEY AUTO_INCREMENT,
	`name`		VARCHAR(20),
	`address`	VARCHAR(30),
	`hp`			CHAR(13)
);

CREATE TABLE `Orders` (
	`orderid`		INT AUTO_INCREMENT PRIMARY KEY,
	`custid`			INT,
	`bookid`			INT,
	`saleprice`		INT,
	`orderdate`		DATE
);
#실습4
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('자바의 이해', '삼성', 17000);
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('자바 기초', '삼성', 22000);
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('자바 활용', '무학', 13000);
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('파이선 기초', '대한', 35000);
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('컴퓨터공학', '컴공', 28000);
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('MY SQL', '대한', 26000);
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('c언어', '컴공', 20000);
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('파이선 활용', '두산', 13000);
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('데이터베이스', '두산', 17500);
INSERT INTO `Booklist` (`bookname`, `publisher`, `price`) VALUES ('정보처리기사', '무학', 20000);


INSERT INTO `Publisher` (`publname`, `staffname`, `hp`) VALUES ('삼성', '박지성', '000-5000-0001');
INSERT INTO `Publisher` (`publname`, `staffname`, `hp`) VALUES ('무학', '김연아', '000-6000-0001');
INSERT INTO `Publisher` (`publname`, `staffname`, `hp`) VALUES ('대한', '장미란', '000-7000-0001');
INSERT INTO `Publisher` (`publname`, `staffname`, `hp`) VALUES ('컴공', '추신수', '000-8000-0001');
INSERT INTO `Publisher` (`publname`, `staffname`, `hp`) VALUES ('두산', '박세리', '000-9000-0001');


INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('홍길동', '부산', '010-1111-1111');
INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('김말자', '서울', '010-1111-2222');
INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('장보고', '창원', '010-1111-3333');
INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('아이유', '마산', '010-1111-4444');
INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('소지섭', '대전', '010-1111-5555');
INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('강호동', '부산', '010-1111-6666');
INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('유아인', '서울', '010-1111-7777');
INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('강동원', '창원', '010-1111-8888');
INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('백종원', '마산', '010-1111-9999');
INSERT INTO `Customer` (`name`, `address`, `hp`) VALUES ('서태지', '대전', '010-1111-0000');


INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1,1,6000, '2014-07-01');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1,3,21000, '2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2,5,8000, '2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3,6,6000, '2014-07-04');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4,7,20000, '2014-07-05');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1,2,12000, '2014-07-07');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4,8,13000, '2014-07-07');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3,10,12000, '2014-07-08');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2,10,7000, '2014-07-09');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3,8,13000, '2014-07-10');		

#실습하기 4-1
SELECT DISTINCT `bookid`,`bookname`,`publisher` FROM `Booklist`;
#실습하기 4-2
SELECT * FROM `Book` WHERE `price` >= 20000 ORDER BY `price` DESC;
#실습하기 4-3
SELECT * FROM `Booklist` WHERE `price` >= 20000 and `publisher` LIKE '%대한%';

#실습하기 4-4
SELECT
	SUM(`saleprice`) AS `총판매액`,
	AVG(`saleprice`) AS `평균값`,
	MIN(`saleprice`) AS `최저가`,
	MAX(`saleprice`) AS `최고가`
FROM `Orders`;
#실습하기 4-5
SELECT * FROM `Customer` AS a
JOIN `Orders` AS b
ON a.custid = b.custid;