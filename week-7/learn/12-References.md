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

CREATE TABLE Star (
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
  - Yo