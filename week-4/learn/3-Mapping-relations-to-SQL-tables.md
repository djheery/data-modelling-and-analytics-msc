In implementing relations, a relation becomes a table. 
Relations are defined using the SQL syntax:

CREATE TABLE

For example, an EMPLOYEE relation with 4 attributes: 

EMPLOYEE(Eno, Ename, M_S, Sal)

The SQL code to create the table to create the table with various data types and their constraints may look like this:

CREATE TABLE EMPLOYEE (
  Eno CHAR(2),
  Ename VARCHAR(30),
  M_S CHAR,  
  Sal NUMBER (6)
);