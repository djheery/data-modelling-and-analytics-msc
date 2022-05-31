# GroupBy in SQL 

The SQL equivalent GroupBy has the syntax: 

SELECT *GroupingAttribute(s)*
  "*aggregation*" AS *Result_Name*
  FROM *RELATION_NAME*
  GROUP BY *GroupingAttribute(s)*

The syntax of *aggregation* is AggFunction (DISTINCT ALL Attribute_Name)

SQL always uses separate words for GROUP BY 
It is never GroupBy

The GroupBy Phrase must always appear after the SELECT and FROM phrases, and its sole purpose is to indicate a GROUP BY operation.

Grouping attribute(s) appear in the SQL GroupBy phrase, and are those that determine which attribute(s) will be used in the SQL GroupBy operation. 

It is not mandatory to repeat any or all of them in the SELECT phrase, but they usually are, since otherwise we would not know from the result which summary value went with which grouping attribute value.

AS corresponds to an assignment operator (although the assignment is backwards, from left to right instead of right to left), but it can optionally be ommited in SQL; inserting AS makes SQL easier to read, so is recommended to avoid errors.

If AS and the new attribute's name are ommitted, the aggregate expression is used as the new attribute's name. 

Examples of GROUP BY in SQL: 

'Get the total salary paid to each marital status group'

SELECT M_S, 
  SUM (ALL Sal) AS TOTAL
  FROM EMPLOYEE 
  GROUP BY M_S

Note in the first line of code ALL could be ommitted

How many different shipment sizes are there per supplier? 

SELECT SNO, COUNT (DISTINCT Qty) AS Sizes
FROM SHIPPING
GROUP BY SNO

How many different shipments are there per supplier?

SELECT SNO, COUNT (*) AS Shipments 
FROM SHIP 
GROUP BY SNO;

Remembebr you cannot use DISTINCT with *. 

