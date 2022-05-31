# Oracle PL/SQL 

PL/SQL stands for: 

**Procedural Language/ Structured Query Language**

PL/SQL is available in: 

- Most Oracle Database Systems 
  - 9i, 10g, 11g, 12c, 18c, 19c 
  - At Uni SQL Plus
- Oracle Personal edition for Windows and Linux, but not any lite versions

## Procedures in PL/SQL

Procedures in PL/SQL in Oracle, possess portability from one system to another. 
Techniques are available for procedural control such as: 

- Case 
- If 
- While
- Parameterized I/O

Procedures are held in database tables under control of the database system in the data dictionary. 

You can find out what procedures you already have in the database using: 

SELECT object_type, object_name
FROM user_objects 
WHERE object_type = 'PROCEDURE';

A breakdown of the above: 

- user_objects = The data dictionary table, maintained by oracle. 
- object_type = This is an attribute of user_objects and contains the value 'PROCEDURE'
  - Other values for object type include: 'TABLE', 'VIEW'
- object_name = This is a user-assigned name for an object, for example 'PATIENT'

## Procedures aid security

Available Privileges on Tables includes: 

- SELECT 
- INSERT 
- UPDATE 
- DELETE 
- REFERENCES 
- ALTER 
- INDEX 
  - Allows the user to create an index on the tabble with CREATE INDEX. 

  