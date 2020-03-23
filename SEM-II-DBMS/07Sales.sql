-- Create tables
CREATE TABLE customer(
    id integer,
    name varchar(15) NOT NULL,
    city varchar(15),
    PRIMARY KEY(id)
);

CREATE TABLE order(
    id integer,
    odate date NOT NULL,
    custid integer,
    oamt integer NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(custid) REFERENCES customer.id
);

CREATE TABLE item(
    id integer,
    cost integer NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE iorder(
    orderid integer,
    itemid integer,
    quantity integer,
    FOREIGN KEY(orderid) REFERENCES order.id,
    FOREIGN KEY(itemid) REFERENCES item.id
);

CREATE TABLE warehouse(
    id integer,
    city varchar(15) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE shipment(
    id integer,
    warehouseid integer,
    shipdate date,
    FOREIGN KEY(id) REFERENCES order.id,
    FOREIGN KEY(warehouseid) REFERENCES warehouse.id
);

-- insert entries
INSERT INTO customer VALUES(1111, 'Kumar', 'Patna');
INSERT INTO order VALUES(1, '10/04/2016', '1111', 10000);
INSERT INTO item VALUES(11,500);
INSERT INTO iorder VALUES(1, 11, 150);
INSERT INTO warehouse VALUES(12, 'Kolkata');
INSERT INTO shipment VALUES(1, 12, '15/04/2016');

-- select entries based on certain constraints
SELECT customer.name, COUNT(order.id), AVG(order.oamt)
FROM customer, order
WHERE customer.id = order.custid
GROUP BY customer.name, order.custid;

SELECT orderid, warehouseid
FROM shipdate
WHERE warehouseid 
IN(SELECT * FROM warehouse WHERE city = 'Patna');

UPDATE iorder SET itemid = NULL WHERE itemid = 10;
DELETE FROM item WHERE id = 10;