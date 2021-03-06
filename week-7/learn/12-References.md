# References 

So far we have not seen nested tables and UDOT that support the sharing of objects.
The relationships have been value base by embedding the objects at row-level. 

References provide an object identifies based:
1:1, 1:Many, and many:many relationships with object relational features. 

Consider the following example: 


CREATE TYPE PointTP AS OBJECT (
    id integer,
    x NUMBER,
    y NUMBER ); 
/

CREATE TABLE Points OF PointTP ( Primary Key (id) );

Rather than creating a Line object by creating two point type objects, if more than one line object shares the same point with the X and Y coordinates we enable the sharing of objects by creating a User Defined Type: PointTP 

The table "Points" wills store individual point objects with a UID, thus enabling more than one line objects to share the same point.

For example to make a triangle you previously would have had to create a 6 point object leading to duplication. 
To avoid this we could create a Table Lines2 which will do the following: 

CREATE TABLE Line2 (
  end1 REF PointTP,
  end2 Ref PointTP,
);

You can now create three rows (corresponding to 3 sides of a triangle) with each line pointing to two point objects using REF.
REF returns an Object ID of the Object being referred to. 
This allows more than one line object to refer to the same point object att either end of the line (end1 or end2)

## Nested Table with References

To recreate the Movies Starts Relation with Movies (version 1) where the Stars Table points to movies uni-directionally 

To do this you need to:

1. Create a User Defined Type of Movie_Ref_Type that will include a single attribute MovieRef. This will hold a pointer/ reference to a single movie object
2. Create another UDOT Movie_Set_Type. This will be a tbale of Movie_Ref_Type: 

CREATE TYPE Movie_Ref_Type AS OBJECT (
  MovieRef REF Movie
);

CREATE TYPE Movie_Set_Type AS TABLE 
OF Movie_Ref_Type;

CREATE TABLE Star (a
  Name VARCHAR(15),
  .....
  .....
  ......
  Movies Movie_Set_Type
)
NESTED TABLE Movies STORE AS Star_Movie

- Type Movie_Ref_Type is an object type with a single attribute that is a reference to a Movie Obbject type 
- The attribute Movies in the Star tabble is a nested table taht contains references to Movie Objects.
- When populating data to the Star table you will need to load any literal data first (any normal attributes)
  - The movies attribute is very human unfriendly as it is a nested table of Logical Object IDs which cannot be typed due to being long and complex. 

## How to populate a nested table of references

To populate a nested table of references, the objects on both sides of the relationship should already exist in the database. 

Consider the insert statement below: 

INSERT INTO TABLE (
  SELECT o1.ntclm FROM otbl1 o1
  WHERE c1
  )
  SELECT REF(o2) FROM otbl2 o2 
  WHERE c2;

Map: 

- otbl1 (o1) = Object table 1
- otbl2 (o2) = Object table 2
- ntclm = Nested table column 
- c1 = Refers to a condition that would be specified to find the target row to insert into

Given the above statement:

You use the INSERT INTO TABLE syntax to tell SQL that you want to insert into a type of table then define the table/ record you want to insert into within the brackets.

In this case you want to insert into the Nested Table column  (o1.ntclm) WHERE condition 1 (c1) is met. 

The second SELECT statements returns references to the objects using the REF function. These are then INSERTED into the table returned by the first select statement.

REF(o2) returns a reference to the table otbl2 where a specific condition is met (c2)

Applying this to the movie table we could have something like this:

INSERT INTO TABLE (
  SELECT S.Movies
  FROM Stars S
  WHERE S.name = 'Hamil')
SELECT REF(m)
FROM Movie_Table m
WHERE m.Title IN ('Star Wars', 'Empire', 'War on Terror')

Given the above statement and applying the rules discussed above the statement we can see that we are inserting movie references into the Stars.Movies nested table by establising: 

- The condition for the the nested column to target within the relations row (who are we assigning the movies too)
- The condition for which movies should be referenced in the chosen row

## How to Query a Nested Table of References using DEREF

The SQL function DREF returns the object that corresponds to the reference we have targeted.

DREF works the opposite way to REF and will return objects rather than returning references. 

The DREF function can be invoked either in the SELECT or the WHERE clause. 

An example query: 

SELECT S.Name, DREF(M.MovieRef)
FROM Star S, TABLE(S.Movies) M 
WHERE S.Name = 'Fisher';

## How to Query a Table of References using a Cursor Expression: 

Consider the Syntax below: 

SELECT S.Name,
  CURSOR (SELECT DREF(MovieRef))
    FROM TABLE(S.Movies))
  FROM Star S
WHERE S.Name = 'Fisher';

The CURSOR expression returns a nested cursor, which evaluates the expression and implicitly processes the data. 

For example, the above query returns the name of the star Fisher and associated movie objects from the nested table Using the movie expression.

## How to Query a Nested Table of References using Unnesting

The SQL function TABLE(col) turns a collection into a table.

Consider the query below: 

SELECT S.Name, S.MovieRef.Title "Title"
       M.MovieRef.Year "Year", M.MovieRef.Length "Length"
FROM Star S, TABLE (S.Movies) M
WHERE S.Name = 'Fisher'

The above statement will return unnest the MovieRef nested table for all items that match the condition and display it in a more readable format by displaying the table names as the ones specified in quotations such as "Title"

