REM Nested-Relational Design
REM Week 7
REM Stars(Name, Address(Street, City), BirthDate, Movies(Title, Year, Lenght))

DROP TYPE MOVIE FORCE
/
DROP TYPE MOVIE_TAB FORCE
/

DROP TYPE ADDR_T FORCE
/

DROP TYPE ADDRESS_TAB FORCE
/

DROP TABLE STAR CASCADE CONSTRAINTS PURGE;
/

Create Type Movie as Object (
	Title varchar(15), 
	Year  number(4,0), 
	Lenght number(3, 0))
/

Create Type Movie_Tab as Table of Movie 
/


Create Type Address_t as Object (
	Street varchar(15),
	City varchar(15))
/

Create Type Address_Tab as Table of Address_t
/

DROP Table Star cascade constraints PURGE
/

Create Table Star (
 Name varchar(15),
 BirthDate Date,
 Primary Key(Name),
 Address Address_Tab,
 Movies  Movie_Tab)
 Nested Table Address Store As Star_Address
 Nested Table Movies Store As Star_Movie
/

REM CREATING MOVIE OBJECTS


REM inserting a Star tuple

insert into Star values ('Fisher', To_Date('09/09/1979', 'MM/DD/YYYY'),
			Address_Tab( 
									Address_t ( 'Maple', 'Hollywood'),
									Address_t ( 'Locust', 'Malibu' ) 
								),
			 Movie_Tab( 
									Movie('Star Wars', 1990, 124),
        			    Movie('Empire', 1992, 127),
				    			Movie('Return', 1996, 133)
								)
			)
/


insert into Star values ('Hamill', To_Date('08/08/1972', 'MM/DD/YYYY'),
			 Address_Tab( Address_t ( 'Oak', 'Bellywood' )),
			 Movie_Tab( Movie('Star Wars', 1990, 124),
        			    Movie('Empire', 1992, 127),
				    Movie('War on Terror', 2001, 333))
			)
/

REM QUERIES

COLUMN TITLE FORMAT A15
COLUMN YEAR FORMAT 9999
COLUMN NAME FORMAT A10
COLUMN ADDRESS FORMAT A35

SELECT   S.Name, S.BirthDate, M.Title "Title",  M.Year "Year"
FROM   Star S, TABLE (S.Movies) M
/

SELECT S.NAME, S.BIRTHDATE, A.STREET, M.title "Title", M.Year "Year"
FROM Star S, TABLE (S.Address) A, TABLE(S.Movies) M
WHERE M.title = 'Star Wars';
