USE employeedb;
SELECT * FROM employee;

SELECT firstname, lastname, department FROM employee;

SELECT * FROM employee WHERE department IS NOT NULL;

SELECT firstname, lastname 
FROM employee 
WHERE salary IS NULL;

SELECT firstname, lastname 
FROM employee 
WHERE salary IS NULL AND department IS NULL;

SELECT firstname, lastname 
FROM employee 
WHERE salary IS NULL OR department IS NULL;

SELECT COUNT(*) as numberofrows FROM employee;

SELECT COUNT(*) as numberofrows FROM employee WHERE department IS NOT NULL;


SELECT COUNT(*) as missingSalary from employee WHERE salary IS NULL;

SELECT COUNT(*) as missingDepartment from employee WHERE department IS NULL;


SELECT COUNT(*) as missingboth from employee WHERE salary IS NULL AND department IS NULL;

SELECT COUNT(*) as missingany from employee WHERE salary IS NULL OR department IS NULL;


UPDATE employee set department='ict',
salary=(SELECT ROUND(AVG(salary),2))
WHERE `employeeId`=1;

UPDATE employee set salary=500 WHERE `employeeId`=7;


UPDATE employee set department='ict' WHERE `employeeId`=6; -- updat department to  `employeeId`6

UPDATE employee SET salary=ROUND(salary*1.1,2); /*update salary 10%*/