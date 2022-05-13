# Missing Data (NULL)

Data is not always available to put in the database. To handle the missing values you must use a special value to represent the missing data. 
By definition the data must share the same data type as the data that is missing, so it can be stored with the data that is known.
This is why you could not simply write 'N/A' in every column that is missing data as this denotes either a CHAR(3) or VARCHAR(no >= 3).

This is where NULL is used. 

## The Use of Null 

When dealing with Null it is important to note that

- NULL is the absence of a value
- NULL **does not** equal 0
- NULL **does not** equal ''
- NULL is not a member of any type because there is no value. 

For example, you could not say, the attribute 'Sal' has a null value. This is wrong. Instead you would say, the attribute 'Sal' is NULL. This does not mean that Sal has a value of 0.

Null requires special support from the DBMS. SQL DMBSs provide this support, but which reason does it represent? 

In reality, no one yet has come up with a good way of handling missing data in DBMSs that is generally accepted. These options are the main ones used in practice, but there is considerable controversy about them. Machine learning algorithms as part of AI can predict values for the missing data based on the history data. 

Not NULL constraint.

Sometimes you want to prevent a c olumn from ever holding NULLs. To achieve this in SQL, add a 'NOT NULL' constraint to the definiton of the column. It will look like this: 

CREATE TABLE EMPLOYEE (
  Eno     CHAR(2),
  Ename   VARCHAR(30) NOT NULL, 
  M_S     CHAR,
  Sal     NUMBER(6)
);

