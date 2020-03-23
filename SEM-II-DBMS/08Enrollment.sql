-- create tables
CREATE TABLE student(
    id varchar(10),
    name varchar(10) NOT NULL,
    major varchar(10) NOT NULL,
    bdate date,
    PRIMARY KEY(id)
);

CREATE TABLE course(
    id integer,
    name varchar(15) NOT NULL,
    dept varchar(15) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE enroll(
    studentid varchar(10),
    courseid integer,
    sem number(1,0) NOT NULL,
    marks integer,
    FOREIGN KEY(studentid) REFERENCES student.id,
    FOREIGN KEY(courseid) REFERENCES course.id
);

CREATE TABLE book(
    ISBN integer,
    title varchar(20) NOT NULL,
    publisher varchar(15),
    author varchar(15),
    PRIMARY KAY(ISBN)
);

CREATE TABLE syllabus(
    courseid integer,
    sem integer,
    ISBN integer,
    FOREIGN KEY(courseid) REFERENCES course.id,
    FOREIGN KEY(ISBN) REFERENCES book.ISBN
);

-- insert entries
INSERT INTO student VALUES('10SKSH3001', 'Karan', 'CSE', '02/01/1994');
INSERT INTO course VALUES(11, 'DCS', 'CSE');
INSERT INTO enroll VALUES('10SKSH3001', 11, 4, 74);
INSERT INTO book VALUES(12345678, 'VB6', 'Microsoft', 'Kyle');
INSERT INTO syllabus VALUES(11, 4, 12345678);

-- select entries based on certain constraints
INSERT INTO book VALUES(12345679, 'VB.NET', 'Microsoft', 'Kyle');
INSERT INTO syllabus VALUES(11, 4, 12345679);

SELECT *  FROM student WHERE id IN(SELECT enroll.studentid FROM enroll);

SELECT *  FROM student WHERE id NOT IN(SELECT enroll.studentid FROM enroll);

SELECT * FROM book WHERE ISBN IN(select syllabus.ISBN FROM syllabus);

SELECT course.dept, course.name 
FROM course, syllabus, book
WHERE book.ISBN = syllabus.ISBN 
AND syllabus.courseid = course.id 
AND book.publisher = 'Microsoft';