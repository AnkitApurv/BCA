-- create tables
CREATE TABLE account(
    accno int,
    type varchar(15),
    branch varchar(15),
    status varchar(15),
    chequefacility varchar(3),
    balance decimal(10,2),
    PRIMARY KEY(accno)
);

CREATE TABLE customer(
    custno int,
    name varchar(15),
    city varchar(10),
    accno int,
    PRIMARY KEY(custno),
    FOREIGN KEY(accno) REFERENCES account.accno
);

-- insert entries
INSERT INTO account VALUES(1001, 'Savings', 'Patna', 'active', 'no', 50000.00);
INSERT INTO customer VALUES(4001, 'Ankit', 'Gaya', 1001);

-- select entries based on certain constraints
SELECT account.accno, customer.name, customer.city, account.chequefacility 
FROM account, customer
INNER JOIN customer ON account.accno = customer.accno
WHERE customer.city='Patna' AND account.chequefacility='yes';

SELECT account.accno, customer.name, account.status, account.balance
FROM account, customer
INNER JOIN customer ON account.accno = customer.accno
WHERE account.balance=50000.00 AND account.status='active';

SELECT account.accno, customer.name, account.branch, account.status, account.balance 
FROM account, customer
INNER JOIN customer ON account.accno = customer.accno
WHERE account.status='active' AND account.branch='Patna';