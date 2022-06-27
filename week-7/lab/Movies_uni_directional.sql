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



CREATE TYPE Movie as Object (
  Title VARCHAR(15),
  Year NUMBER(4, 0),
  Length NUMBER (3, 0)
)
/

CREATE TABLE Movie_Table OF Movie (Primary Key (Title))
/

CREATE TYPE movie_ref_type AS OBJECT (
  MovieRef REF Movie
)
/

CREATE TYPE Movie_Set_Type AS TABLE OF movie_ref_type
/

CREATE TYPE Address_type AS OBJECT (
  Street VARCHAR(15),
  City VARCHAR(15)
)
/

CREATE TYPE Address_Table AS TABLE OF Address_type
/

CREATE TYPE Star_type AS OBJECT (
  Name VARCHAR(15),
  dob DATE,
  addr Address_table, 
  movies movie_set_type
)

CREATE TABLE Stars OF Star_type (Primary Key (Name))
  NESTED TABLE addr STORE AS Star_address 
  NESTED TABLE Movies STORE AS Star_Movies
/

ALTER TABLE MOVIE
  ADD Movie_Stars Stars
    NESTED TABLE MOVIE_STARS STORE AS M_STARS
  /