SET VERIFY ON
SET ECHO ON

REM  Implementing Nested Relational - Alternative 1
REM  Consider the projects and departments per employee.

REM First create a type for a pair of Project and Department

CREATE TYPE PD AS OBJECT (
    PROJ_NO	CHAR(2),
    DEPT_NO	CHAR(2)		);
/

REM Now create a type to be a Table of the PD pair

CREATE TYPE PD_Table AS TABLE OF PD ;
/

REM Now let us create the main table with Employee and the Nested Table of the PD Pair

CREATE TABLE Emp_PD (
    EMP_NO	CHAR(2),
    Set_of_PD	PD_Table )
NESTED TABLE Set_of_PD  STORE AS  PDTable
/

REM Now let us populate the table

INSERT INTO Emp_PD VALUES (
 'E1', PD_Table( PD( 'P1', 'D1' ),
                 PD( 'P2', 'D1' )  )  )
/
INSERT INTO Emp_PD VALUES (
 'E2', PD_Table( PD( 'P1', 'D1' ),
                 PD( 'P5', 'D3' )  )  ) 
/

INSERT INTO Emp_PD VALUES (
 'E4', PD_Table( PD( 'P4', 'D6' )  )  )
/
INSERT INTO Emp_PD VALUES (
 'E5', PD_Table( PD( 'P4', 'D6' ),
		 PD( 'P3', 'D9' )  )  )
/

INSERT INTO Emp_PD VALUES (
 'E6', PD_Table( PD( 'P4', 'D7' )  )  )
/
INSERT INTO Emp_PD VALUES (
 'E9', PD_Table( PD( 'P4', 'D7' )  )  ) 
/
INSERT INTO Emp_PD VALUES (
 'E7', PD_Table( PD( 'P3', 'D9' )  )  )
/

COMMIT;

COLUMN SET_OF_PD FORMAT A50

SELECT * FROM Emp_PD;

PAUSE 'PRESS ENTER TO CONTINUE ... '

REM Reconstructing the orignal EPD Relation using Unnesting

SELECT  E.Emp_no, PD.Proj_no, PD.Dept_no
FROM Emp_PD E, Table (E.Set_of_PD) PD
/

PAUSE 'PRESS ENTER TO CONTINUE ... '

SELECT Set_of_PD FROM Emp_PD
WHERE EMP_NO =  'E2' ;
