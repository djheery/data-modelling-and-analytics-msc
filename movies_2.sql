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

CREATE TYPE star_type 
/

CREATE TYPE star_ref_type AS OBJECT (
  star_ref REF star_type
)
/

CREATE OR REPLACE TYPE star_ref_table AS TABLE OF star_ref_type
/

CREATE TYPE Movie AS OBJECT (
  title VARCHAR(15),
  year NUMBER (4,0),
  length NUMBER (3,0),
  stars star_ref_table
)
/

CREATE TYPE Movie_Ref_Type AS OBJECT (
  movie_ref REF Movie
)
/

CREATE TYPE Movie_ref_tab AS TABLE OF Movie_Ref_Type
/

CREATE TYPE Addresses AS OBJECT (
  street VARCHAR(15),
  city VARCHAR(15)
)
/

CREATE TYPE Addr_Tab AS TABLE OF Addresses
/

CREATE OR REPLACE TYPE star_type AS OBJECT (
  Name VARCHAR(15),
  BithDate DATE,
  addresses addr_tab,
  movies movie_ref_tab
)
/

CREATE TABLE Movie_table OF Movie (PRIMARY KEY (title))
  NESTED TABLE star_ref_table STORE AS STAR_REF 
/

CREATE TABLE Stars OF star_type (PRIMARY KEY (Name))
  NESTED TABLE MOVIES STORE AS Movie_Stars
/