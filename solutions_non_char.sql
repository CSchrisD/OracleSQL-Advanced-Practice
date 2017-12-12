/*
Instructions:
		1. Create a query that selects the department and average salary from the emp_details_view.
		2. Modify the query so that the average salary is truncated.
		3. Modify the query so that the average salary is rounded.
		4. Format the salary so that it includes a dollar sign, decimal point and commas (Hint: $999,999.00).
		5. Create a query to select the job_id, start_date, end_date from the job_history table.
		6. Modify the query so that the start date appears as MM/DD/YYYY format and the end date appears in DAY MONTH D, YYYY format.
		7. Round the months between the start date and end date for each record.
*/

--1
SELECT DEPARTMENT_NAME, AVG(SALARY) 
FROM HR.EMP_DETAILS_VIEW
GROUP BY DEPARTMENT_NAME;

--2
SELECT DEPARTMENT_NAME, TRUNC(AVG(SALARY))
FROM HR.EMP_DETAILS_VIEW
GROUP BY DEPARTMENT_NAME;

--3
SELECT DEPARTMENT_NAME, ROUND(AVG(SALARY))
FROM HR.EMP_DETAILS_VIEW
GROUP BY DEPARTMENT_NAME;

--4
SELECT DEPARTMENT_NAME, TO_CHAR(AVG(SALARY), '$999,999.00')
FROM HR.EMP_DETAILS_VIEW
GROUP BY DEPARTMENT_NAME;

--5
SELECT JOB_ID, START_DATE, END_DATE FROM HR.JOB_HISTORY;

--6
SELECT 
JOB_ID, 
TO_CHAR(START_DATE, 'MM/DD/YYYY'), 
TO_CHAR(END_DATE, 'DAY MONTH D, YYYY') FROM HR.JOB_HISTORY;

--7
SELECT 
JOB_ID, 
ROUND(MONTHS_BETWEEN(END_DATE, START_DATE)) FROM HR.JOB_HISTORY;
