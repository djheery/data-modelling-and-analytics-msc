SET ECHO ON

REM Object-Relational Design 3rd Option - Bi-directional 

REM Stars(Name, Address(Street, City), BirthDate, Movies({Set of REFs to Movie objects}))

REM Movies(Title, Year, Length, Stars({Set of REFs to Star objects}))

drop table movie_tab cascade constraints PURGE
/
drop table star CASCADE CONSTRAINTS PURGE
/
drop type movie_set_t FORCE
/
drop type movie_ref_t FORCE
/
drop type movie FORCE
/
drop type Address_t FORCE
/
drop type Address_Tab FORCE
/
drop type Movie_Tab FORCE
/
drop type Star_t Force
/
drop type Star_ref_t Force
/
drop type Star_set_t Force
/

Create Type Star_t
/

Create or replace Type Star_ref_t as Object (
	StarRef REF Star_t)
/

Create or replace Type Star_set_t as Table of Star_ref_t
/


Create Type Movie as Object (
	Title varchar(15), 
	Year  number(4,0), 
	Length number(3, 0),
	Stars Star_set_t)
/

Create Type Movie_ref_t as Object (
	MovieRef REF Movie)
/


Create Type Movie_set_t as Table of Movie_ref_t
/

Create Type Address_t as Object (
	Street varchar(15),
	City varchar(15))
/

Create Type Address_Tab as Table of Address_t
/

Create or Replace Type Star_t as Object (
 Name varchar(15),
 BirthDate Date,
 Address Address_Tab,
 Movies  Movie_set_t);
/


Create Table Star of Star_t (Primary Key(Name))
 Nested Table Address Store As Star_Addresses
 Nested Table Movies Store As Star_Movies
/


Create Table Movie_Tab of Movie (Primary Key (Title))
Nested Table Stars Store As Movie_Stars
/

REM CREATING MOVIE OBJECTS


insert into Movie_Tab values ('Star Wars', 1990, 124, Star_set_t() )
/
insert into Movie_Tab values ('Empire', 1992, 127, Star_set_t() )
/
insert into Movie_Tab values ('Return', 1996, 133, Star_set_t() )
/
insert into Movie_Tab values ('War on Terror', 2001, 333, Star_set_t() )
/

REM inserting a Star tuple

insert into Star values ('Fisher', To_Date('09/09/1979', 'MM/DD/YYYY'),
			 Address_Tab( Address_t ( 'Maple', 'Hollywood' ),
				      Address_t ( 'Locust', 'Malibu' ) ),
			 Movie_set_t()
			)
/

REM now inserting into the Nested Table of Movie REFs

INSERT INTO TABLE (
  SELECT  S.Movies
  FROM   Star S
  WHERE  S.Name = 'Fisher')
SELECT REF(m)
       FROM Movie_Tab m
       WHERE m.title in ('Star Wars', 'Empire', 'Return')
/

insert into Star values ('Hamill', To_Date('08/08/1972', 'MM/DD/YYYY'),
			 Address_Tab( Address_t ( 'Oak', 'Bellywood' )),
			 Movie_set_t()
			)
/

REM now inserting into the Nested Table of Movie REFs
INSERT INTO TABLE (
  SELECT  S.Movies
  FROM   Star S
  WHERE  S.Name = 'Hamill')
SELECT REF(m)
       FROM Movie_Tab m
       WHERE m.title in ('Star Wars', 'Empire', 'War on Terror')
/



REM now link movie objects to the star objects, to achieve
REM bi-directional relationships

INSERT INTO TABLE (
   SELECT M.Stars
   FROM Movie_Tab M
   WHERE M.title = 'Star Wars')
SELECT REF(s)
FROM Star s
WHERE s.Name IN ('Fisher', 'Hamill');



REM QUERIES



SELECT   S.Name, S.BirthDate, S.Address, M.MovieRef.Title "Title",  M.MovieRef.Year "Year"
FROM   Star S, TABLE (S.Movies) M
/

SELECT   S.Name, M.MovieRef.Title
FROM   Star S, TABLE (S.Movies) M
WHERE S.Name = 'Fisher'
/


REM Now let us query the inverse relationship from Movie to Star

SELECT   M.Title, S.StarRef.Name
FROM   Movie_Tab M, TABLE (M.Stars) S
WHERE M.Title = 'Star Wars'
/


SELECT   S.Name, 
	CURSOR(	SELECT DEREF(MovieRef)
		FROM TABLE (S.Movies) )
FROM   Star S
WHERE S.Name = 'Fisher'
/

SELECT S.Name, M.MovieRef.Title "Title", 
       M.MovieRef.Year "Year", M.MovieRef.Length "Length"
FROM   Star S, TABLE (S.Movies) M
/