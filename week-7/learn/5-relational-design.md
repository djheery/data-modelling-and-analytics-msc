# Relational Design for Movie Database vs Nested

To see the full ERD design and tables  please view slide 5 of week-7

A relational query for the stars database is very clunky and looks like this: 

SELECT s.name, sa.street, sa.city,
       m.title, m.year, m.length
FROM Stars s, Star_Address sa, 
     Movies m, Movie_Stars ms
WHERE s.name = sa.name
  AND s.name = ms.name
  AND ms.title = m.title;

As apposed to the query on a nested relational database:

SELECT s.name, s.address, s.movies
FROM Stars s;

The above queries all from one table without joins as there are nested relations inside this one relation. 
This is a cleaner query for sure. 

The above was to do with nested relational 

## Object Relational Database: Version 1

The movie database structured using an object relational database looks like the table under this heading in slide 7 

The movies section of the relation instead points to a separate relation where the movies are defined 

for example Fisher and Hamil both point to Star wars while hamil only points to war on terror. 

Watch out for object sharing, as Movies are now shared among Stars.

The previous tabular structure corresponds to the following logical form:

- Stars (name, address(street, city), birthdate, movies({*Movies}))
- Movies (title, year, length)
- It is clear that the relation Stars has two nested relations: address and movies.

# Object-relational design for the movie database: Version 2

In the second visual depiction there is a bi-directional relationship between the tuples in stars and the tuples in movies. 
Bi directional which means they each point to eachother for example, the star wars entry points to both fisher and hamil and hamil and fisher point to star wars.

The previous tabular structure corresponds to the following logical form:

- Stars (name, address(street, city), birthdate, movies({*Movies}))
- Movies (title, year, length, stars(*{Stars}))

Now Stars still has two nested relations (movies and Address) where movies now has a new nested relations of stars

