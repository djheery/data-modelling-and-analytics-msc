# Comparisons With NULL in SQL

SQL provides a special facility for use in WHERE clause to check whether an attribute has the value of NULL: 

WHERE X IS NULL
WHERE X IS NOT NULL 

## Boolean Operators in SQL 

Multiple Comparisons can be combined into one Restriction condition using:

AND, OR and NOT 

Example: 

WHERE *comparison1* AND NOT *comparison2* OR *comparison3*;

The comparisons are combined in a left-to-right order, except that NOT has higher priority than AND and OR. 

