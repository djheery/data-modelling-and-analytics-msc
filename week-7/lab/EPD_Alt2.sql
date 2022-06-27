
SET VERIFY ON
SET ECHO ON

REM  Implementing Nested Relational - Alternative 2
REM  Consider the employees and departments per project.

CREATE TYPE ED AS OBJECT (
    EMP_NO	CHAR(2),
    DEPT_NO	CHAR(2)		);
/

CREATE TYPE ED_Table AS TABLE OF ED ;
/

CREATE TABLE Proj_ED (
    PROJ_NO	CHAR(2),
    Set_of_ED	ED_Table )
NESTED TABLE  Set_of_ED  STORE AS  EDTable
/

INSERT INTO Proj_ED VALUES (
 'P1', ED_Table( ED( 'E1', 'D1' ),
                 ED( 'E2', 'D1' )  )  )
/

INSERT INTO Proj_ED VALUES (
 'P2', ED_Table( ED( 'E1', 'D1' )  )  )
/

INSERT INTO Proj_ED VALUES (
 'P5', ED_Table( ED( 'E2', 'D3' )  )  )
/

INSERT INTO Proj_ED VALUES (
 'P4', ED_Table( ED( 'E4', 'D6' ),
                 ED( 'E5', 'D6' ),
		 ED( 'E6', 'D7' ),
                 ED( 'E9', 'D7' )  )  )
/

INSERT INTO Proj_ED VALUES (
 'P3', ED_Table( ED( 'E5', 'D9' ),
                 ED( 'E7', 'D9' )  )  ) 
/

COMMIT;

COLUMN SET_OF_ED FORMAT A50

SELECT * FROM Proj_ED;

PAUSE 'PRESS ENTER TO CONTINUE ... '

REM Reconstructing the orignal EPD Relation using Unnesting

SELECT ED.emp_no, P.proj_no, ED.dept_no
FROM Proj_ED P, TABLE(P.Set_of_ED) ED
order by ED.emp_no;


SELECT ED.emp_no, P.proj_no, ED.dept_no
FROM Proj_ED P, TABLE(P.Set_of_ED) ED
order by 1;

PAUSE 'PRESS ENTER TO CONTINUE ... '

SELECT Set_of_ED FROM Proj_ED
WHERE PROJ_NO = 'P4'
/

