# Examples of SQL Deletion

Deleting tuples from a relation is necassary for a functioning database. 
The DELETE keyword should be used for this purpose.

An example of the syntax:

DELETE FROM RELATION_NAME
  WHERE *condition*;

In the where phrase, a condition is written that picks out the required tuples from RELATION_NAME. 
These tuples are then deleted from the relation_name. 

However, the **where** phrase is optional.
You can also just write: 

DELETE from RELATION_NAME;

In this case, all of the tuples in RELATION_NAME are deleted from it, but RELATION_NAME still exists.
Albeit empty. 

## Example 1

Delete tuples, where the salary is less than 30,000. 

DELETE from EMPLOYEE 
  WHERE SALARY < 30000;

## Example 2 

Delete all tuples in EMPLOYEE 

DELETE from EMPLOYEE; 

## Example 3

Delete a specific tuple, such asw the one referring to 'E1'

DELETE from EMPLOYEE 
  WHERE EMP_NO = 'E1';

Because EMP_NO is a candidate key, you can be sure taht you have deleted one specific tuple, which will correspond to the right person. 


