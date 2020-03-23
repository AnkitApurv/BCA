-- create table
CREATE TABLE library(
    bookid integer,
    title varchar(10),
    author varchar(15),
    publisher varchar(15),
    pub_year number(4,0),
    price number(6,2),
    PRIMARY KEY(bookid)
);

-- insert an entry
INSERT INTO library VALUES(1001, 'Introduction to C', 'Wiley', 'Undefined Pubs', '2012', '500');

-- show all entries
SELECT * FROM library;

-- show all unique entries from publisher column
SELECT DISTINCT publisher FROM library;

-- show entries based on certain constraints
SELECT * FROM library ORDER BY title;

SELECT * FROM library WHERE price BETWEEN 100 AND 600;

SELECT author FROM library WHERE publisher='Undefined Pubs';
