# Specifying Candidate Keys in SQL

Keys (Primary and Alternate) can be assigned in two places: 

- In the same subb-statement in which an attribute is assigned its type, (PK is one attribute)
- In a separate sub-statement at the end of a create table statement.

The first method is only possible if the SQL key consists of one attribute. 
The second method must be used if the key consits of two or more attributes 

To define a constraint in either case, starting the assignment of an SQL key with the phrase Constraint constraint-name assigns a name to key constraint as well. 

## Example 1:

CREATE TABLE EMPLOYEE(
  Eno Char(2) PRIMARY KEY,  
  Ename VARCHAR(30),
  M_S CHAR check(M_S IN ('S', 'M', 'W', 'D')),
  Sal NUMBER(6) check(Sal > 999 AND Sal < 100000)
);

Create Table EMPLOYEE (
  ENo  Char(2), 
  Ename Varchar2(30),
  M_S Char check (M_S In (‘S’, ‘M’, ‘W’, ‘D’ ) ),
  Sal Number(6) check ( Sal > 999 And Sal < 100000),
  Primary Key (ENo) 
);

Note the following (In Oracle):

- Both Examples are permissible, though Oracle will allocate a default constraint name
- VARCHAR2 is Oracl's second version of VARCHAR data type.
- You may use VARCHAR or VARCHAR2

## Example 2

CREATE TABLE EMPLOYEE (
  ENo CHAR(2) Constraint EMP_PKEY Primary Key,
  Ename Varchar2(30),
  M_S Char check (M_S In (‘S’, ‘M’, ‘W’, ‘D’ ) ),
  Sal Number(6) check ( Sal > 999 And Sal < 100000),
);

Create Table EMPLOYEE (
  ENo  Char(2), 
  Ename Varchar2(30),
  M_S Char check (M_S In (‘S’, ‘M’, ‘W’, ‘D’ ) ),
  Sal Number(6) check ( Sal > 999 And Sal < 100000),
  Constraint EMP_PKEY Primary Key (ENo) 
);
