/*
Instructions:
		1. Add a new location with a primary key identifier of 999, an address of 600 Forbes Avenue in Pittsburgh PA (in the US) with a zip code of 15282.
		2. Change this location address to include "Ave" rather than "Avenue"
		3. Delete this address based upon its primary key.
		4. Rollback the changes.
*/

--1
INSERT INTO HR.LOCATIONS 
VALUES (99, '600 Forbes Avenue', '15282', 'Pittsburgh', 'PA', 'US');

--2
UPDATE HR.LOCATIONS 
SET STREET_ADDRESS = REPLACE(STREET_ADDRESS, 'Avenue', 'Ave')
WHERE LOCATION_ID = 99;

--3
DELETE FROM HR.LOCATIONS
WHERE LOCATION_ID = 99;

--4
ROLLBACK;
