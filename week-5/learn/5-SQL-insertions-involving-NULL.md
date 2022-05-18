# SQL Insertions Involving NULLs 

To INSERT into a table with specific empty values you can use the NULL keyword for the relevant attributes. 

This may look like this:

```

INSERT into EMPLOYEE 
  Values('E2', 'Daniel', NULL, NULL)

```

This will tell the database to **explicitly** set the values of the given attributes in the sequence to NULL 

Alternitavely you can use the INSERT statement with attribute names, but then omit the names and values of attribbutes that are to recieve nulls.

INSERT into EMPLOYEE
  Values ('E2', 'Daniel');

This will tell the RDB implicitly to make the other attributes NULL. 

Both methods have the same effect. 
Because a complete tuple must be submitted to the RDB, any attributes ommited will recieve NULLs by default for the purpose of completing the tuple. If any attribute is prohibited from recieving nulls by its integrity constraint, then an error will be thrown by the RDB. 

