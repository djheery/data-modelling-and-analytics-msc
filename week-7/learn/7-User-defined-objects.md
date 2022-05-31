# User Defined Objects

An object Type declaration is like a record or tuple construct. 
Methods can be associated with a UDOT. 
Object types can be used as a domain for attributes.

In coordinate geometry, any point is defined in terms of its distance from a fixed point (the origin) along two lines or axes (denoted as X and Y) which are orthogonal (at right angles) to each other. Thus, you could define a data type to represent Points, having two numeric attributes to represent the X and Y values as in the following PointType:

CREATE TYPE PointType AS OBJECT ( 
  x NUMBER,
  y NUMBER );

The above is an example copied from the lecture of defining a type

You can also declare methods/ functions in the UDOT. For example, if you wanted a method to claculate Pythagoras Theorem:

CREATE TYPE LineType AS OBJECT (
  end1 PointType,
  end2 PointType,
  MEMBER FUNCTION 
    length(scale IN NUMBER)
    RETURN NUMBER
);


