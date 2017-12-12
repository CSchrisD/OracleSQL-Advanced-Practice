/*
Instructions:
		1. Log in as a DBA user.
		2. Create a new user.
		3. Set the user's default table space to USERS.
		4. Grant the user RESOURCE and CREATE SESSION privileges.
		5. Grant the user the ability to select from the HR departments table.
		6. Grant the user the ability to insert into the HR departments table.
		7. Grant the user the ability to delete from the HR departments table.
		8. Connect as the new user.
		9. Execute the following: SELECT * FROM HR.DEPARTMENTS;
*/

-- make new user/password
create user usernamex identified by passwordx;

grant create session, resource, create synonym, create view
    to usernamex;

-- allow the user to manipulate the departments table
grant select on hr.departments to usernamex;
grant insert on hr.departments to usernamex;
grant delete on hr.departments to usernamex;

select * from hr.departments;