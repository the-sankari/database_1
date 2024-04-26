-- Drop database if it is exits and create a new one
DROP DATABASE if EXISTS customerdb;
CREATE DATABASE customerdb;

-- Use the customer database
USE customerdb;

-- Create customer table
CREATE TABLE customer(
    customerId INTEGER NOT NULL PRIMARY KEY,
    firstname VARCHAR(9) NOT NULL,
    lastname VARCHAR(10) NOT NULL,
    customerClass VARCHAR(20) NOT NULL,
    favouriteIceCream VARCHAR(11) NOT NULL
);

INSERT INTO customer(customerId, firstname, lastname, customerClass, favouriteIceCream) VALUES
    (1, 'Matt', 'River', 'Silver', 'vanilla'),
    (2, 'Olivia', 'River', 'Gold', 'chocolate');

-- Create user luke and grant priviliges

-- Create a new user
CREATE USER 'luke'@'localhost' IDENTIFIED BY '1234';

-- Grant all privileges to the user on the database
GRANT ALL PRIVILEGES ON customerdb.* TO 'luke'@'localhost';
