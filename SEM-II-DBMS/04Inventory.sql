-- create tables
CREATE TABLE inventory(
    itemcode number(4,0),
    itemname varchar(15),
    price decimal(8,2),
    PRIMARY KEY(itemcode)
);

CREATE TABLE purchase(
    itemcode number(4,0),
    quantity number(7,0),
    FOREIGN KEY(itemcode) REFERENCES inventory.itemcode
);

-- insert entries
INSERT INTO inventory VALUES(101, 'Pen', 9.00);
INSERT INTO purchase VALUES(101, 200);

-- select entries based on certain constraints
SELECT inventory.itemcode, inventory.itemname, inventory.price, purchase.quantity 
FROM inventory, purchase 
WHERE inventory.itemcode = purchase.itemcode;

-- select certain entries and group them
SELECT inventory.itemcode, inventory.itemname, SUM(purchase.quantity) 
FROM inventory, purchase
WHERE inventory.itemcode = purchase.itemcode
GROUP BY inventory.itemcode, inventory.itemname;

SELECT inventory.itemcode, inventory.itemname 
FROM inventory
WHERE inventory.itemcode = purchase.itemcode
GROUP BY inventory.itemcode, inventory.itemname;