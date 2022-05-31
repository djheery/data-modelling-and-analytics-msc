# Using Cursors

If you wish to select multiple rows in a PL/SQL procedure, then you must use a cursor. 
A SELECT statement only returns 0 or 1 row. Any more than this and the procedure will fail. 

You do this by using a LOOP to return row by row until the exit or there are no more rows to return. 

This can have multiple cursors. 

## How to Control and Loop Around the Cursor in a PL/SQL procedure 

Here is how methodically loop:

Declare 
  - Create a Named SQL area
Open 
  - Identify and Active Set 
Fetch 
  - Load the current row into variables 
Check if Empty 
  - Test for more existing rows 
    - If no data is found 
      - Close the loop 
    - If data is found 
      - Return to fetch until the loop ends


## How to control a Cursor

The table shows cursor controlling attributes for obtaining status information about a cursor.

| Attribute         | Type        |   Description                                           |
|-------------------|-------------|---------------------------------------------------------|
| %ISOPEN           | Boolean     | Evaluates to TRUE if the cursor is open                 |
| %NOTFOUND         | Boolean     | Evaluates to TRUE if the next fetch returns no row      |
| %FOUND            | Boolean     | True if new row is found (opposite of %NOTFOUND)        |
| %ROWCOUNT         | NUMBER      | Returns the total number of rows returned so far        |

## Example of a PL/SQL Procedure with Cursor 

CREATE OR REPLACE PROCEDURE proc_test AS

v_empid NUMBER;

CURSOR cur_sample IS 
  SELECT empid FROM EMPLOYEE
    WHERE grade > 4;

BEGIN 
  OPEN cur_sample;
  LOOP
  FETCH cur_sample INTO v_empid;
  EXIT WHEN cur_sample%NOTFOUND;
    UPDATE EMPLOYEE
      SET salary = salary + 500
      WHERE empid = V_empid;
  END LOOP;
  CLOSE cur_sample;
END;
/

