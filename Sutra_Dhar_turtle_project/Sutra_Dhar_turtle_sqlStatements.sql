-- Use the turtledb database
USE turtledb;

-- Select all columns from the turtle table
SELECT * FROM turtle;

-- Insert data into the turtle table
INSERT INTO turtle (number, name, speed, weightKg, age) VALUES
(1, 'Peace', 'ridiculously fast', 10, 20),
(6, 'Deep Thinker', 'fast', 100, 100),
(2, 'Turtle King', 'ridiculously slow', 150, 2),
(5, 'MaxAge 2000', 'slowish', 30, 19),
(7, 'Ninja', 'quicksilvery', 5, 10),
(3, 'Hurrier', 'normal', 1, 200),
(4, 'Hard Shield', 'tarish', 20, 5);

-- Select specific columns from the turtle table
SELECT age, name, number FROM turtle;

-- Select rows from the turtle table where the speed is 'slowish'
SELECT * FROM turtle WHERE speed = 'slowish';

-- Select rows from the turtle table where the age is 5
SELECT * FROM turtle WHERE age = 5;

-- Update the name and speed of the turtle with number 4
UPDATE turtle SET name = 'Hurrier', speed = 'tarish' WHERE number = 4;

-- Update the name and speed of the turtle with number 2
UPDATE turtle SET speed = 'tarish', name = 'Peace' WHERE number = 2;

-- Update the weightKg, speed, and name of the turtle with number 2
UPDATE turtle SET weightKg = 5, speed = 'normal', name = 'Turtle King' WHERE number = 2;

-- Update the weightKg, age, and speed of the turtle with number 3
UPDATE turtle SET weightKg = 30, age = 200, speed = 'normal' WHERE number = 3;

-- Delete the row from the turtle table where the number is 2
DELETE FROM turtle WHERE number = 2;

-- Delete the row from the turtle table where the number is 6
DELETE FROM turtle WHERE number = 6;

-- Delete the row from the turtle table where the age is 2
DELETE FROM turtle WHERE age = 2;

-- Delete the rows from the turtle table where the name is 'Peace' or 'Hurrier'
DELETE FROM turtle WHERE name = 'Peace' OR name = 'Hurrier';

-- Delete the rows from the turtle table where the weightKg is 5, age is 100, or name is 'Turtle King'
DELETE FROM turtle WHERE weightKg = 5 OR age = 100 OR name = 'Turtle King';