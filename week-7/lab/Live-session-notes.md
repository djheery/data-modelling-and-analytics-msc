# Live Session Notes 

The learning objectives of this session is to: 

- Go through the lifecycle of database modeling and implementation 
  - Conceptual to logical 
  - Logical to SQL
  - Loading of data into the database 
- Both for relational & Object-relational 

## Brief Scenario 

A company has several departments. Each department has one or more employees and controls several projects but sometime none. Each department has a unique number a name and a budget. 

Each Employee works at a specific department and may be tasked to manage the department where he/she works. Each employee has a unique number, a name, a salary and a marital status.

Each project has a unique number, a start date and a deadline. Each employee may eb allocated several projects but possibly none and likewise a project may have several employees working on it but sometime there may be no one allocated yet.

## Notes on ERD statements 

- Company Not an entity type as there is only 1 company which all entity types will operate within 
  - If there was a company that deals with other companies then company would be an entity type 
- Relationships defined by transitive verbs 
- I need to take a look at the lines for optional and required relationships 
  - Mandatory relationship = double line
- Many to many become a relationship on its own 

## Notes on Mapping Process 

- Many to many relationships become a separate relation 
  - the table ALLOC is created with two foreign keys added to correspond to the EMP and PROJ table making one composite key.

## Loading the Data and creating the SQL

Got to 17 mins to view statements about how to load data into the database.

 - 20mins to look at how to define a spool file (Basically spool then define the directory) and at the end make sure you say spool off
 - Set echo on and set verify on make the output show in the spool file. 

## Object Relational Database 

In this section we map the ER/EER to an Object-Relational Model (Logical Design)

Each entity type becomes a UDT 
Primary keys shown by underlining 

- Dept has many employees: DEPT 1..1 <-- staff --> 1..* EMP;
- May employees work for One Department. 