# Handling Generalization and Specialization with Type Inheritance

Generalization and Specialization is an important concept of Object-Orientation, also known as inheritance. 

This enables us to specialize our UDOTs going from general to more specialized forms. You can do this by specializing them into subtypes that represent different attributes of the data to better deal with real-world-scenarios.

You can specialize attributes or methods of a subtype in the following ways: 

- Add new attributes that its partent super type does not have. 
- Add new methods that do not exist in the parent
- Changing the implementation of certain methods that are inherited from a parent.

FINAL/NOT FINAL types and methods: 

- A type is defined as NOT FINAL if it can be specialized further into subtypes
- By default all UDOTs are FINAL 
- By default all methods are NOT FINAL

If you want to creat a subtype of a UDOT defined as FINAL, you can do so using ALTER TYPE. 

## Examples of Type Inheritance

A final type definition:

CREATE TYPE person AS OBJECT (
  pid CHAR(6),
  pname VARCHAR(40),
  paddress VARCHAR(99),
  postcode VARCHAR(10)
) FINAL; 

Changing a type from FINAL to NOT final can be done like this:

ALTER TYPE person NOT FINAL; 

Below is an example of a NOT FINAL type method: 

CREATE TYPE TP AS OBJECT (
  ...........
  MEMBER PROCEDURE PrettyPrint(),
  FINAL MEMBER FUNCTION 
    Compare(
      x Number
    );
) NOT FINAL;

Creating a subtype of a Person: 

CREATE TYPE Student UNDER Person (
  reg_no    CHAR(7),
  course_id CHAR(10)
) NOT FINAL;

CREATE TYPE PartTimeStudent UNDER Student (
  weekly_hours   NUMBER(2),
  year           NUMBER(1)
) FINAL; 


