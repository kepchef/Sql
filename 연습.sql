INSERT INTO `JBOARD_ARTICLE` (`title`,`content`,`uid`,`regip`,`rdate`)
SELECT `title`,`content`,`uid`,`regip`,`rdate` FROM `JBOARD_ARTICLE`;

SELECT * FROM `JBOARD_ARTICLE` ORDER BY `seq` DESC
LIMIT 0, 10;
