/*
Instructions:
Write queries that use the sys_context function to retrieve the 
IP_ADDRESS, HOST, LANGUAGE, ISDBA, SESSION_USER, DB_NAME values 
which are associated with the USERENV namespace.
*/

--1
SELECT sys_context('USERENV', 'IP_ADDRESS')
FROM dual;

--2
SELECT sys_context('USERENV', 'HOST')
FROM dual;

--3
SELECT sys_context('USERENV', 'LANGUAGE')
FROM dual;

--4
SELECT sys_context('USERENV', 'ISDBA')
FROM dual;

--5
SELECT sys_context('USERENV', 'SESSION_USER')
FROM dual;

--6
SELECT sys_context('USERENV', 'DB_NAME')
FROM dual;