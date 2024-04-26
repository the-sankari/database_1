-- Drop the database 'turtledb' if it exists and create a new one
DROP DATABASE IF EXISTS turtledb;
CREATE DATABASE turtledb;

-- Use the 'turtledb' database
USE turtledb;

-- Create a table named 'turtle' with the following columns:
-- number: an integer that is the primary key
-- name: a string with a maximum length of 16 characters
-- speed: a string with a maximum length of 33 characters
-- weightKg: an integer
-- age: an integer
CREATE TABLE turtle(
    number INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR(16) NOT NULL,
    speed VARCHAR(33) NOT NULL,
    weightKg INTEGER NOT NULL,
    age INTEGER NOT NULL
);

-- Insert two rows into the 'turtle' table
INSERT INTO turtle (number, name, speed, weightKg, age) VALUES
(1, 'Peace', 'ridiculously fast', 10, 20),
(6, 'Deep Thinker', 'fast', 100, 100);

-- Create a new user 'thomas'@'localhost' with the password 'F77qfybq'
-- and grant all privileges on the 'turtledb' database to this user
CREATE USER 'thomas'@'localhost' IDENTIFIED BY 'F77qfybq';
GRANT ALL PRIVILEGES ON turtledb.* TO 'thomas'@'localhost';

-- Select all rows from the 'turtle' table
SELECT * FROM turtle;