-- create table
CREATE TABLE student(
    regno integer,
    name varchar(15),
    dob date,
    marks integer,
    PRIMARY KEY(regno)
);

-- remove marks column
ALTER TABLE student DROP COLUMN marks;

-- change regno datatype
ALTER TABLE student MODIFY (regno varchar(15));

-- show table schema
DISC student;

-- add PhNo column
ALTER TABLE student ADD (PhNo integer);

-- insert an entry
INSERT INTO student VALUES ('14AB201', 'Ankit', '31/01/1996', '9876543201');

-- show all entries
SELECT * FROM student;

-- show entries based on certain constraints
SELECT * FROM student dob LIKE '31/01/1996';

SELECT * FROM student ORDER BY name;