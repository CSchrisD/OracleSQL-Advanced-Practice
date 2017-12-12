/*
Instructions:
		1. Create a query that returns the count of employees by region, country, state and department.
		2. Add a ROLLUP clause to the query and examine the results.
		3. Add calls to the GROUPING function for each level.
*/

--1
SELECT REGION_NAME, COUNTRY_NAME, STATE_PROVINCE, DEPARTMENT_NAME, COUNT(*) 
FROM HR.EMP_DETAILS_VIEW
GROUP BY REGION_NAME, COUNTRY_NAME, STATE_PROVINCE, DEPARTMENT_NAME
ORDER BY REGION_NAME, COUNTRY_NAME, STATE_PROVINCE, DEPARTMENT_NAME;

--2
SELECT REGION_NAME, COUNTRY_NAME, STATE_PROVINCE, DEPARTMENT_NAME, COUNT(*) 
FROM HR.EMP_DETAILS_VIEW
GROUP BY ROLLUP(REGION_NAME, COUNTRY_NAME, STATE_PROVINCE, DEPARTMENT_NAME)
ORDER BY REGION_NAME, COUNTRY_NAME, STATE_PROVINCE, DEPARTMENT_NAME;

--3
SELECT
GROUPING(region_name) AS g1,
GROUPING(country_name) AS g2,
GROUPING(state_province) AS g3,
GROUPING(department_name) AS g4,
region_name, 
country_name,
state_province,
department_name,
COUNT(*) 
FROM HR.EMP_DETAILS_VIEW
GROUP BY ROLLUP(REGION_NAME, COUNTRY_NAME, STATE_PROVINCE, DEPARTMENT_NAME)
ORDER BY REGION_NAME, COUNTRY_NAME, STATE_PROVINCE, DEPARTMENT_NAME; 