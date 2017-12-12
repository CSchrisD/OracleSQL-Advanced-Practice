/*
Instructions:
		1. Start with a simple query that retrieves the street_address, postal_code, 
		city, state_province and country_id from the locations table.
		2. Add a DECODE function call that checks the country_id. If the value of country 
		id is 'US' then display the word 'Domestic' otherwise display the word 'Foreign'.
		3. Create a query with an inner join on the employees and jobs tables.
		4. In the query's SELECT statement, choose the first_name, last_name, job_title, 
		salary increased by 10%, the min_salary and the max_salary.
		5. Add a case statement (aliased by new title) that appends the word 'Senior' to the 
		title for any employee who's salary when adjusted by 10% exceeds the max_amount permitted for the job title.
*/

--1
SELECT 
STREET_ADDRESS, 
POSTAL_CODE, 
CITY, 
STATE_PROVINCE, 
COUNTRY_ID 
FROM HR.LOCATIONS;

--2
SELECT 
STREET_ADDRESS, 
POSTAL_CODE, 
CITY, 
STATE_PROVINCE, 
COUNTRY_ID,
DECODE(COUNTRY_ID, 
    'US',
    'DOMESTIC', 
    'FORIGN') 
FROM HR.LOCATIONS;

--3
SELECT * FROM HR.EMPLOYEES e
INNER JOIN HR.JOBS j
ON e.JOB_ID = j.JOB_ID;

--4
SELECT 
FIRST_NAME, LAST_NAME, JOB_TITLE, SALARY * 1.10 AS pay, MIN_SALARY, MAX_SALARY
FROM HR.EMPLOYEES e
INNER JOIN HR.JOBS j
ON e.JOB_ID = j.JOB_ID;

--5
SELECT 
FIRST_NAME, LAST_NAME, JOB_TITLE AS old_title,
CASE
    WHEN SALARY * 1.10 > MAX_SALARY THEN 'Senior ' || JOB_TITLE
    ELSE JOB_TITLE
END AS Statement
FROM HR.EMPLOYEES e
INNER JOIN HR.JOBS j
ON e.JOB_ID = j.JOB_ID;