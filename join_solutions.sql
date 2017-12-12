/*
Instructions:
		1. Create a query that returns all employee rows. Assign an alias e to the table.
		2. Modify the query so that it accesses both the employees and departments table (using the Theta syntax, but "accidentally" forget the join predicate.). Make sure to add the alias e to the asterisk in the SELECT statement.
		3. Modify the query so that it uses an inner join between the two tables using the department_id columns (thus utilizing the department assignment relationship). Note that this is a natural join (but does not use the ambiguous NATURAL JOIN syntax). 
		4. Rewrite the query so that it returns the same rows but uses a semijoin.
*/

--1
SELECT * FROM HR.EMPLOYEES e;

--2
SELECT * FROM HR.EMPLOYEES e, HR.DEPARTMENTS d
WHERE e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--3
SELECT * FROM HR.EMPLOYEES e
INNER JOIN HR.DEPARTMENTS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--4
SELECT * FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID IN (
            SELECT DEPARTMENT_ID FROM HR.DEPARTMENTS);