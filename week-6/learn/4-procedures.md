# Procedures

Procedures are necessary to grant individuals different privileges on different areas of the DB. 

cgel1 = A general user of the database. 
cgel2 = Another general user of the database not yet mentioned

A DBA may issue a statement like this:

GRANT select, insert, delete, update 
ON patient 
TO cgel1

The above statement grants "cgel1" access to SELECT, INSERT, UPDATE & DELETE queries on the patient table.
Given the above statement consider that the user still cannot use statements such as REFERENCES, ALTER or INDEX on the patient table. 

Whist this is happening there is another user called cgel2, they do not have access to this table. 
The DBA then issues this statement: 

GRANT execute 
ON add_patient 
TO cgel2;

The above statement now allows cgel2 to execute the procedure called add_patient.
This means that this user can now add patients to the patient table (assumed), whilst still not having access to the patient table. 

This prevents them from altering or even querying the table with SELECT.

This example proves how powerful procedures can be, by adding security to areas of a system that may need it. 

## Importance of PL/SQL Procedures

A stored procedure is a unique definition of a process at a given time. 
They are used to implement business rules, and are available to selected users. 

They also avoid redundancy and inconsistency in the definition process. 
They should implement business rules faithfully and provide security. 

## PL/ SQL Procedure Construction

SQL> create or replace  procedure add_patient as
   2. begin
   3. insert into patient values('99','Smith','Newcastle','12-mar-1980');
   4. EXCEPTION
   5. WHEN others THEN DBMS_OUTPUT.PUT_LINE('error');
   6. end
   7. /

Warning: Procedure created with compilation errors
SQL> show errors
Errors for PROCEDURE ADD_PATIENT

LINE/COL ERROR
---------- ---------- ---------- ---------- ----------
3/1      PL/SQL: SQL Statement ignored
3/13     PL/SQL: ORA-00947: not enough values

Features of the above procedure:

Either add or overwrite procedure called add_patient. However, this needs care, as you could accidentally overwrite an existing procedure.

In the above statement **IS** is an Alternative Syntax for **AS**

Other notes: 

- BEGIN and END are the start and finish of your block of code 
- DBMS_OUPUT.PUT_LINE('error'): prints a message if SERVEROUTPUT is ON 
- EXCEPTION - handles exceptions
- / means compile 

## Error Tracking of PL/SQL 

If you see an error warning you should view these to check the problems that have arisen 
You can view the errors with the command: 

SHOW ERRORS 
or 
SHOW ERR

Once errors are fixed and you have received a response Procedure created, you can use the statement: 

execute add_patient 
or 
exec add_patient

SQL> create or replace procedure add_patient (reg in char) as
   2 begin
   3 insert into patient values('99','Smith','Newcastle','12-mar-1980',reg);
   4 EXCEPTION
   5 WHEN others THEN DBMS_OUTPUT.PUT_LINE('error');
   6 end;
   7 /

A working example above 
Note: reg in char 

This means that it will take an input variable that is defined as a char. 
**in** means that it will take an input. 

Other types at this levl are number, date, also known as 'broad-brush' datatypes

## All Values from Parameters to the Procedure

Consider the code below: 

 create or replace  procedure add_patient (pidv in char, pnamev in char, addressv in char,
   2 dobirthv in date, regdatev in date) as
   3 begin
   4 insert into patient values(pidv,pnamev,addressv,dobirthv,regdatev);
   5 EXCEPTION
   6 WHEN others THEN DBMS_OUTPUT.PUT_LINE('error');
   7 end;
   8 /

The above procedure has no data hardcoded into it.
You need dynamic input at run-time, thus hardcoded data is generally meaningless. 

To view the output of an error line you must put 

SERVEROUTPUT ON


