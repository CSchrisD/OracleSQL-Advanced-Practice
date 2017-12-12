/*
Instructions:
		1. Get a list of all department names in the departments tables
		2. Add the ROWNUM pseudo-column to the SELECT clause
		3. Add an ORDER BY department_name. Notice that the rownum is retreived prior to ordering the results.
		4. Add ROWNUM to the WHERE clause to limit the results to those with ROWNUMS less than five.
*/

--1
SELECT DEPARTMENT_NAME FROM departments;

--2
SELECT ROWNUM, DEPARTMENT_NAME FROM departments;

--3
SELECT ROWNUM, DEPARTMENT_NAME FROM departments
ORDER BY DEPARTMENT_NAME;

--4
SELECT ROWNUM, DEPARTMENT_NAME FROM (SELECT DEPARTMENT_NAME FROM departments
    WHERE ROWNUM < 5
    ORDER BY DEPARTMENT_NAME);