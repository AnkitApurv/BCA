-- create tables
CREATE TABLE person(
    id varchar(15),
    name varchar(15) NOT NULL,
    address varchar(20),
    PRIMARY KEY(id)
);

CREATE TABLE car(
    regid varchar(10),
    model varchar(15) NOT NULL,
    year number(4,0) NOT NULL,
    PRIMARY KEY(regid)
);

CREATE TABLE accident(
    reportid integer,
    accdate date NOT NULL,
    location varchar(15) NOT NULL,
    PRIMARY KEY(reportid)
);

CREATE TABLE owns(
    driverid varchar(15),
    regno varchar(10),
    PRIMARY KEY(driverid, regno),
    FOREIGN KEY(driverid) REFERENCES person.id,
    FOREIGN KEY(regid) REFERENCES car.regid
);

CREATE TABLE participated(
    driverid varchar(15),
    regid varchar(10),
    reportid integer,
    dmgamount number(6,2),
    PRIMARY KEY(driverid, regid, reportid),
    FOREIGN KEY(driverid) REFERENCES person.id,
    FOREIGN KEY(regid) REFERENCES car.regid,
    FOREIGN KEY(reportid) REFERENCES accident.reportid
);

-- insert entries
INSERT INTO person VALUES(1111, 'Aman', 'Jay Nagar');
INSERT INTO car VALUES('BR040012', 'Tata', 2011);
INSERT INTO owns VALUES(1111, 'BR040012');
INSERT INTO accident VALUES(1024, '21/02/2016', 'Kadamkuan');
INSERT INTO participated VALUES(1111, 'BR040012', 1024, '40000');

-- select entries based on certain constraints
UPDATE participated SET dmgamount = dmgamount + 2500 WHERE  regid = 'BR040012' AND reportid = 1024;

INSERT INTO person VALUES(1112, 'Mohit', 'Jay Nagar');
INSERT INTO car VALUES('BR040013', 'Tata', 2011);
INSERT INTO owns VALUES(1112, 'BR040013');
INSERT INTO accident VALUES(1025, '21/02/2016', 'Kadamkuan');
INSERT INTO participated VALUES(1112, 'BR040013', 1025, '30000');

SELECT COUNT(*) FROM accident WHERE accdate like '__/__/2016';

SELECT COUNT(*) FROM car, participated WHERE car.regid = participated.regid AND car.model = 'Ford';

SELECT driverid, model, year FROM car, owns WHERE car.regid = owns.regid;