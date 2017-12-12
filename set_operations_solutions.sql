/*
Instructions:
		1. Write a simple query to retrieve city and state_province data from the locations table.
		2. Using a set operator, write a query to determine names that appear in both the city and the state_province fields of the location table.
		3. Write a query that returns the same results without using a set operator.
		4. Write a query (using an inline view) that returns a count of how many distinct entries appear in either the city and the state_province fields.
		5. Write a query (using an inline view) that returns a count of how many total entries appear in the city and the state_province fields combined.
*/

--1
SELECT CITY, STATE_PROVINCE FROM HR.LOCATIONS;

--2
SELECT CITY FROM HR.LOCATIONS
INTERSECT
SELECT STATE_PROVINCE FROM HR.LOCATIONS;

--3
SELECT CITY FROM HR.LOCATIONS
WHERE CITY = STATE_PROVINCE;

--4
SELECT COUNT(*) FROM
(SELECT CITY FROM HR.LOCATIONS
UNION ALL
SELECT STATE_PROVINCE FROM HR.LOCATIONS);

--5
SELECT COUNT(*) FROM
(SELECT CITY AS c FROM HR.LOCATIONS
UNION ALL
SELECT STATE_PROVINCE FROM HR.LOCATIONS)
WHERE c IS NULL;