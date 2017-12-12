/*
Instructions:
		1. Create a query that returns the lowest paid employee. (This will involve a subquery in the WHERE clause).
		2. Create a query that returns the departments where the average salary is less than the average for all employees. (This will involve a subquery in the HAVING clause).
		3. Create a query that returns the lowest paid employee for each department. (This will involve a correlated subquery).
*/

--1
SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);

--2
SELECT DEPARTMENT_NAME, AVG(SALARY) FROM EMP_DETAILS_VIEW
GROUP BY DEPARTMENT_NAME
HAVING AVG(SALARY) < (SELECT AVG(SALARY) FROM EMPLOYEES);

--3
SELECT * FROM EMPLOYEES e1
WHERE e1.SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES e2
            WHERE e1.DEPARTMENT_ID = e2.DEPARTMENT_ID);