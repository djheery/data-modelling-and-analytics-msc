# Querying and Unnesting Nested Tables in Oracle SQL

Going back to the Star table with the nested relational table, we can assume it has bee populated.
The following query may not be very useful for users because the nested table (S.Movies) is unordered and is effectively a table within the main Star table: 

SELECT S.Name, S.Movies 
FROM Star S
WHERE s.Name = 'Fisher';

You can unnest them to get some useful values: 

SELECT S.Name, M.Title, M.Year
FROM Star S, TABLE(S.Movies) M
WHERE S.Name = 'Fisher';

This query will return a nicer tabular output and has unested the Movies table.
You do this by using the:

TABLE(*Table Name*) Syntax.

