CREATE TABLE examples (
	examId INT AUTO_INCREMENT,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    PRIMARY KEY (examId)
);

SHOW COLUMNS FROM examples; -- 테이블 구조 확인 명령어

DROP TABLE examples;

ALTER TABLE
	examples
ADD
	country VARCHAR(100) NOT NULL;

ALTER TABLE examples
ADD age INT NOT NULL,
ADD address VARCHAR(100) NOT NULL;

ALTER TABLE examples
MODIFY address VARCHAR(50) NOT NULL;

ALTER TABLE examples
MODIFY lastName VARCHAR(10) NOT NULL,
MODIFY firstName VARCHAR(10) NOT NULL;

ALTER TABLE
	examples
CHANGE COLUMN
	country state VARCHAR(100) NOT NULL;

ALTER TABLE
	examples
DROP COLUMN
	address;

ALTER TABLE
	examples
DROP COLUMN state, 
DROP COLUMN age;

CREATE TABLE articles(
	id INT AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    content VARCHAR(200) NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id)
);

SHOW COLUMNS FROM articles;

SELECT * FROM articles;

INSERT INTO articles (title, content, createdAt)
VALUES ('hi', 'my name is hanui', 20000101);

INSERT INTO
	articles (title, content, createdAt)
VALUES
	('title1', 'content1', '1900-01-01'),
	('title2', 'content2', '1800-01-01'),
	('title3', 'content3', '1700-01-01');

INSERT INTO articles (title, content, createdAt)
VALUES ('mytitle', 'my content', CURDATE());

UPDATE articles
SET title = 'newTitle'
WHERE id = 1;

UPDATE
	articles
SET 
	title = 'newTitle2',
    content = 'newContent2'
WHERE 
	id = 2;

UPDATE
	articles
SET
	content = replace(content, 'content', 'TEST');
    
SET SQL_SAFE_UPDATES = 0; 

DELETE FROM articles
WHERE id = 1;

DELETE FROM
	articles
ORDER BY
	createdAt DESC
LIMIT 2;
