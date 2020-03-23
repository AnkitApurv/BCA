-- create table
CREATE TABLE employee(
    empid number(4,0),
    name varchar(15),
    dob date,
    dept varchar(10),
    salary number(10,2),
    PRIMARY KEY(empid)
);

-- insert an entry
INSERT INTO employee VALUES(1001, 'Ankit', '31/01/1996', 'Sft. Dev.', '60000.00');

-- select entries based on certain constraints
SELECT dept, COUNT(empid) NO_OF_EMPLOYEES FROM employee GROUP BY dept;

SELECT SUM(salary) SUM_OF_SALARY FROM employee;

SELECT SUM(salary) SUM_OF_SALARY, AVG(salary) AVERAGE_OF_SALARY FROM employee WHERE dept='Sft. Dev.';

SELECT MAX(salary) HIGHEST_SALARY FROM employee;

SELECT MIN(salary) LOWEST_SALARY FROM employee;

-- modify an existing entry
UPDATE employee SET salary = salary + 1000 WHERE dept='Sft. Dev.';