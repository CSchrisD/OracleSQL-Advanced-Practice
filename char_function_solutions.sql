/*
Instructions:
		1. Create a query that creates an email address for each employee by 
		concatenating first name and last name (separated by a dot) with @company.com. 
		2. Create a query that uses the query created in the previous step as an 
		inline view. Set this query aside as it will be used again in this exercise. 
		3. First, modify the query created in the previous step to find the length of 
		the longest email address. Next, add a few spaces to the @company.com character string. 
		Now modify the query so that we see the length of the longest email address with and without the spaces that were added. 
		4. Start again with the query created in step two above. In the outer query, change the 
		name of the email domain from @company.com to @newcompany.com. 
		5. Create a query that returns the number of employees with an "a" in their first name. 
*/

--1
SELECT (LOWER(FIRST_NAME) 
|| '.' || 
LOWER(LAST_NAME) || '@company.com') AS email 
FROM HR.EMPLOYEES;

--2
SELECT email FROM
(
SELECT 
(LOWER(FIRST_NAME) 
|| '.' || 
LOWER(LAST_NAME) || '@company.com') AS email 
FROM HR.EMPLOYEES
);

--3
SELECT  MAX(LENGTH(email)) AS withSpaces, 
MAX(LENGTH(TRIM(email))) AS withoutSpaces  
FROM(
SELECT 
(LOWER(FIRST_NAME) 
|| '.' || 
LOWER(LAST_NAME) || '@company.com   ') AS email 
FROM HR.EMPLOYEES
);

--4
SELECT REPLACE(email, '@company.', '@newcompany.') FROM
(
SELECT 
(LOWER(FIRST_NAME) 
|| '.' || 
LOWER(LAST_NAME) || '@company.com') AS email 
FROM HR.EMPLOYEES
);

--5
SELECT COUNT(*) FROM HR.EMPLOYEES
WHERE INSTR(UPPER(FIRST_NAME), 'A') > 0;