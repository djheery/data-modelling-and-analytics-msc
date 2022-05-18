# SQL Amendments 

In SQL, **UPDATE** is given the more specific meaning of amend. 
An example of this is: 

UPDATE **relation_name** *set attribute assignment(s)*
  WHERE *condition*;

Again in the *where* statement is optional, and if one exists a condition is written that selects the subset of required tuples from *relation_name*. These tuples are then said to be **amended**.

If you were to write:

UPDATE **relation_name** *set attribute assignment(s)*;

All tuples in the relation would be amended with the attribute assignments stated. 

UPDATE indicates that an amendment is to be carried out, while the set phrase contains the attribute amendment assignments (using = as the assignment symbol)

## Examples of SQL Amendments

### Example 1

Amend the salary of all tuples in the employee relation to give them a 10% payrise + 500 pounds. 

UPDATE EMPLOYEE 
  SET SALARY = 500 + (1.1 * SALARY);

### Example 2

UPDATE EMPLOYEE 
SET E_NAME = 'Wilson', M_S = 'W', SALARY = 27000 
WHERE EMP_NO = 'E5';

## Setting Values to Null 

It is also possible to amend an attribbute so that it becomes null instead of containing a value. 

In this circumstance the assignment operator '=' would still be used to assign NULL even though NULL has no value. 

Example:

UPDATE EMPLOYEE 
SET SALARY = NULL
WHERE EMP_NO = 'E5';

This would set 'E5's salary to null.

UPDATE EMPLOYEE 
SET SALARY = NULL;

This would make all employees salary within the database have a value of NULL. 

