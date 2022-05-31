# Object Tables

Tables can be created taht store collections of objects. 

Tables created using UDOTs are called object tables. 

For example, consider the UDOT for the movie entity type discussed earlier.
You do this using ORacle SQL's Type Definition first and then define an object table called move_tab using the UDOT move. 

Such a table can be viewed as: 

- A single column table in which each entry is a Movie Object
- A multi column table in whihc each attribute of a movie is a column 

Objects that appear in object tables are called row objects, 
Objects that appear as attributes of other objects or in table columns are called column objects.

## Example

CREATE TYPE Movie AS OBJECT (
  title VARCHAR(15),
  year NUMBER (4, 0)
  length Number (3, 0)
);
/

CREATE TABLE Movie_Table 
OF MOVIE (PRIMARY KEY (title));

