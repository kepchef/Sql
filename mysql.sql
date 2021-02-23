CREATE USER 'sqoop'@'localhost' identified by '1234';
CREATE USER 'sqoop'@'%' identified by '1234';
CREATE DATABASE sqoop;
GRANT ALL PRIVILEGES ON sqoop.* TO 'sqoop'@'localhost';
FLUSH PRIVILEGES;
