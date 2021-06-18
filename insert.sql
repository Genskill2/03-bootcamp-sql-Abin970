--CREATE TABLE publisher(
--        id INT PRIMARY KEY,
--        name TEXT UNIQUE NOT NULL,
--        country TEXT NOT NULL
--);

--CREATE TABLE books(
--        id INT PRIMARY KEY,
--        title TEXT,
--        publisher INT,
--        FOREIGN KEY (publisher) REFERENCES publisher(id)
--);

--CREATE TABLE subjects(
--        id INT PRIMARY KEY,
--        name TEXT NOT NULL
--);

--CREATE TABLE books_subjects(
--        book INT,
--        subject INT,
--        FOREIGN KEY (books) REFERENCES books(id),
--        FOREIGN KEY (subject) REFERECES subjects(id)
--);


INSERT INTO subjects (name) VALUES ('C');	--1
INSERT INTO subjects (name) VALUES ('UNIX');	--2
INSERT INTO subjects (name) VALUES ('Technology');	--3
INSERT INTO subjects (name) VALUES ('Go');	--4
INSERT INTO subjects (name) VALUES ('Science Fiction');	--5
INSERT INTO subjects (name) VALUES ('Productivity');	--6
INSERT INTO subjects (name) VALUES ('Psychology');	--7
INSERT INTO subjects (name) VALUES ('Politics');	--8
INSERT INTO subjects (name) VALUES ('History');		--9

INSERT INTO publisher (name,country) VALUES ('PHI','India');
INSERT INTO publisher (name,country) VALUES ('Harper','USA');
INSERT INTO publisher (name,country) VALUES ('GCP','USA');
INSERT INTO publisher (name,country) VALUES ('Avery','USA');
INSERT INTO publisher (name,country) VALUES ('Del Rey','UK');
INSERT INTO publisher (name,country) VALUES ('Vintage','UK');

INSERT INTO books (title,publisher) VALUES ('The C Programming Language',1);	--1
INSERT INTO books (title,publisher) VALUES ('The Go Programming Language',1);	--2
INSERT INTO books (title,publisher) VALUES ('The UNIX Programming Environment',1);--3
INSERT INTO books (title,publisher) VALUES ('Cryptonomicon',2);		--4
INSERT INTO books (title,publisher) VALUES ('Deep Work',3);		--5
INSERT INTO books (title,publisher) VALUES ('Atomic Habits',4);		--6
INSERT INTO books (title,publisher) VALUES ('The City and The City',5);	--7
INSERT INTO books (title,publisher) VALUES ('The Great War for Civilisation',6);--8


INSERT INTO books_subjects (book,subject) VALUES (1,1);
INSERT INTO books_subjects (book,subject) VALUES (1,2);
INSERT INTO books_subjects (book,subject) VALUES (1,3);
INSERT INTO books_subjects (book,subject) VALUES (2,4);
INSERT INTO books_subjects (book,subject) VALUES (2,3);
INSERT INTO books_subjects (book,subject) VALUES (3,2);
INSERT INTO books_subjects (book,subject) VALUES (3,3);
INSERT INTO books_subjects (book,subject) VALUES (4,3);
INSERT INTO books_subjects (book,subject) VALUES (4,5);
INSERT INTO books_subjects (book,subject) VALUES (5,3);
INSERT INTO books_subjects (book,subject) VALUES (5,6);
INSERT INTO books_subjects (book,subject) VALUES (6,6);
INSERT INTO books_subjects (book,subject) VALUES (6,7);
INSERT INTO books_subjects (book,subject) VALUES (7,5);
INSERT INTO books_subjects (book,subject) VALUES (7,8);
INSERT INTO books_subjects (book,subject) VALUES (8,8);
INSERT INTO books_subjects (book,subject) VALUES (8,9);

--SELECT b.title,p.name,s.name
---	FROM books b,publisher p,subjects s,books_subjects sb
---	WHERE b.id = sb.book AND s.id=sb.subject AND b.publisher = p.id
--	ORDER BY b.title;
