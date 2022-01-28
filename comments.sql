use demo;

DROP TABLE IF EXISTS comment;
CREATE TABLE comment (
  id INT NOT NULL AUTO_INCREMENT,
  comment TEXT DEFAULT NULL,
  email VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY(id)
);

INSERT INTO comment (comment,email) 
VALUES("첫 댓글입니다.","asdasd1990@naver.com");









