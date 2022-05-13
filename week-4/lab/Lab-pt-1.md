# Week 4 Lab: Part 1

Learning Objectives: 

- To practice creating relations whose attributes are drawn from appropriate data types.
- To become familiar with the underlying data types for all the columns within the tables of a simple database. 

## Outline of Activity

1. Decide on Suitable Data types for all the columns within the tables of a simple database. 
2. Create a simple Database in SQL
3. The following tasks should be carried out in Oracle 11g/12c SQL
  - Set up the new tables 
  - Check that the tables made have been set up correctly

## Exercise 1.1

Fill in the Data type column from the table below (There is a description in the pdf document): 

| Table Name    | Column Name       | **Data Type**     | Description                                             | 
|---------------|-------------------|-------------------|---------------------------------------------------------|
| EMP           | EMP_NO            | CHAR(2)           | A two-character code, not necessarily both digits.      |
|               | EMP_NAME          | VARCHAR(10)       | The employee's surname: up to 10 characters             |
|               | SALARY            | INTEGER           | Whole Number of Pounds                                  |
|               | MARITAL_STATUS    | CHAR              | A one-character coded value                             |
| DEPT          | DEPT_NO           | CHAR(2)           | A two-character code, not necessarily both digits       |
|               | DEPT_NAME         | VARCHAR(10)       | Name of department: up to 10 letters                    |
|               | MANAGER_NO        | CHAR(2)           | The Employee Number of the manager of this department   |
|               | BUDGET            | INTEGER           | Whole Number of pounds                                  |
| PROJ          | PROJ_NO           | CHAR(2)           | A two-character code, not necessarily both digits       |
|               | START_DATE        | DATE              | The date when the project started                       |
|               | DEADLINE          | DATE              | Date when the Project must be completed                 |

## SQL Syntax

There are a precise set of rules governing the syntax (grammar) of SQL. 

- INTEGER
  - A whole number (which may have a positive or negative value), it is same as NUMBER(38), which is an extremely big numerical datatype, having 9999 ... 999 (38 Nines), so should be used with care only when you need to deal with extremely big numbers
- NUMBER (p, s)
  - This requires you to specify 
    - the precision (p) : Number of significant figures 
    - the scale (s) : number of decimal places 