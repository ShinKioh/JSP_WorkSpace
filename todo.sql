# demo database 생성하고 utf8mb4(모든 문자, 한글 및 이모지 포함) 
CREATE DATABASE IF NOT  EXISTS demo
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE demo;

DROP TABLE IF EXISTS users; # users table이 있으면 삭제
CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(20) DEFAULT NULL,
    lastName VARCHAR(20) DEFAULT NULL,
    userName VARCHAR(250) DEFAULT NULL,		# 유저 이름
    password VARCHAR(20) DEFAULT NULL,		# 비밀 번호
	PRIMARY KEY(ID)
);

DROP TABLE IF EXISTS todos; # todo table이 있으면 삭제
CREATE TABLE todos (
	id INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(255) DEFAULT NULL, # 할일 설명
    is_done BIT(1) NOT NULL,			   # 완료됨	
    target_date DATETIME(6) DEFAULT NULL,  # 목표 날짜	
    username VARCHAR(255) DEFAULT NULL,    # 유저 이름
    title VARCHAR(255) DEFAULT NULL,	   # 할일 이름
	PRIMARY KEY(ID)
);