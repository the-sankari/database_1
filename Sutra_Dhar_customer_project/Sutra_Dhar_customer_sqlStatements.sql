-- Use the customer database
USE customerdb;

-- Insert data to the database 
INSERT INTO customer (customerId, firstname, lastname, customerclass, favouriteIceCream) VALUES
(3000, 'Jeff', 'Lake', 'SuperBonus', 'raspberry'),
(4123, 'Abel', 'Hammer', 'OrdinaryPenPusher', 'vanilla'),
(6543, 'Olivia', 'River', 'R.I.P', 'caramel'),
(2000, 'Layla', 'Garcia', 'SolidGold', 'strawberry'),
(5000, 'Paula', 'Smith', 'ToBeAwoided', 'blueberry'),
(7987, 'Matt', 'Irony', 'VIP', 'chocolate'),
(1000, 'Sophie', 'Bell', 'KeyCustomer', 'toffee');


-- Getting data

-- Select all data
SELECT * FROM customer;

--Select specific  columns
SELECT favouriteIceCream, firstname, customerClass FROM customer;

-- Select data based on a condition
SELECT * FROM customer WHERE favouriteIceCreame='toffee';
SELECT * FROM customer WHERE customerClass='OrdinaryPenPusher';
SELECT * FROM customer WHERE customerClass='KeyCustomer';


-- Update Data

UPDATE customer SET lastname = 'Hammer', firstname = 'Jeff' WHERE customerId = 6543;
UPDATE customer SET favouriteIceCream = 'chocolate', lastname = 'Smith' WHERE customerId = 2000;
UPDATE customer SET firstname = 'Olivia', lastname = 'Lake', customerclass = 'VIP' WHERE customerId = 4123;
UPDATE customer SET customerclass = 'R.I.P', lastname = 'Lake', firstname = 'Abel' WHERE customerId = 5000;

-- Delete data
DELETE FROM customer WHERE customerId = 2000;
DELETE FROM customer WHERE customerId = 6543;
DELETE FROM customer WHERE favouriteIceCream = 'chocolate';
DELETE FROM customer WHERE favouriteIceCream = 'chocolate' AND lastname = 'Smith';
DELETE FROM customer WHERE favouriteIceCream = 'blueberry' OR customerclass = 'OrdinaryPenPusher' OR lastname = 'Garcia';
