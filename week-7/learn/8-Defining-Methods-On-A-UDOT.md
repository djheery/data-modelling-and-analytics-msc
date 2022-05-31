# Defining Methods on a UDOT

Methods on a UDOT are defined separately. 
The method body is written in PL/SQL.

The following Length Function Implements Pythagoras Theorem: 

CREATE TYPE BODY LineType AS 
  MEMBER FUNCTION 
    length (scale NUMBER) RETURN NUMBER IS
      BEGIN
        RETURN 
          scale * SQRT(
            (SELF.end1.x - SELF.end2.x) * (SELF.end1.x - SELF.end2.x) +
            (SELF.end1.y - SELF.end2.y) * (SELF.end1.y - SELF.end2.y)
          )
      END;
END;


