# Nested Tables 

A Nested table is an unordered set of data elements that are all of the same data type. 
It has a single column of built-in type or UDOT.

First you need to define ta type to be a table of some built in type or UDOT: 

CREATE TYPE MovieTableType AS TABLE 
OF Movie;

Then define a column or attribute in another table or type of this new nested table type: 

CREATE TABLE Star (
  name VARCHAR(15),
  .....
  .....
  .....
  Movies MovieTableType DEFAULT MovieTableType()
)

NESTED TABLE Movies STORE AS Star_Movie;

The movies column is defined in the Star table with the default constructor: MovieTableType().
The tuples in the movies column are stored in a separate storage table called Star_Movie;

