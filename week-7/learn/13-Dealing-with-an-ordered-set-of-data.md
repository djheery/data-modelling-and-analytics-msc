# Dealing With an Ordered Set of Data using a Variable Array (varray)

VARRAY is a collection type in Oracle object-relational SQL.
It is similar to a table, except that a VARRAY deals in an ordered set of instances of built-in data types.

These data types include: 

- Number
- Date
- UDOT 
  - For example LineType 

You must specify a maximum number which pertains to the size of the array, however, this can be changed hence it is called a variable array (VARRAY)

All elements/ members of the varray must be of the same data type whether built in or UDOT. 

You can access/ store the elements by their index, which is an interger value which must be within the size of the VARRAY. 

The following example is how to create a varray:

CREATE TYPE phone_type AS OBJECT (
  country_code VARCHAR(2),
  area_code    VARCHAR(3),
  phone_no     VARCHAR(7);
);

CREATE TYPE phone_varray_type 
  AS VARRAY (5) OF phone_type;

CREATE TABLE dep_phone_list (
  dept_no NUMBER(5),
  phone_list phone_varray_type
);

INSERT INTO dept_phone_list 
  VALUES (
  100,
  phone_varray_typ(
    phone_type ('44', '0191', '5061111'),
    phone_type ('44', '0191', '2393499'),
    phone_type ('44', '0191', '6758444'),
  )


The above is fairly simple to understand but I will go over it: 

First you CREATE the the UDOT of phone_type with 3 attributes associated (coutry_code, area_code, phone_no);

This type is then referemced when you create the phone_varray_type.
You create a type of phone_varray_type, then define the size of the VARRAY as 5, this number is arbitrary as it could be any number. This varray has an associated type of phone_type thus it knows anything stored within will have to be of this UDOT. 

Then the table is created dept_phone_list. 

Then the insert statement inserts a department number of 100, then uses the phone_type constructor to insert the data accordingly. 

