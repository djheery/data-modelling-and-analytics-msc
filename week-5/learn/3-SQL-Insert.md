# SQL Insert Statement 

There are two forms of SQL syntax. The only limitation on inserting literal tuples is that only one can be entered at a time, but there is no limit to the numbber of tuples that the retrieval can provide for insertion. 

## Literal Tuple 

A literal tuple is a tuple whose values are literally written out. 

To insert a tuple of this type, the first syntactical form is used. 

Here is a syntactical example: 

INSERT into <\RELATION NAME>
  Values(<\A value for each attribute>)

A full example exists below for inserting employees into an table labled EMPLOYEE where data to insert is (employee_no, surname, marital status, salary)

INSERT into EMPLOYEE 
  Values('E2', 'Nash', 'M', 50000);

INSERT into EMPLOYEE  
  Values('E3', 'Heery', 'M', 10);

SQL permits only one literal to be entered at a time, so two insertions have to be made.

## Second Syntactical Form

To insert the value of a named relation or any SQL Expression, the second syntactical form is used.
The retrieval of either a named relation or of any SQL expression is written in place of the ellipses. 

INSERT into RELATION_NAME 
  SELECT ...
  FROM ...
  ...

Syntactical example: 

INSERT into EMPLOYEE
  SELECT * FROM EMP;