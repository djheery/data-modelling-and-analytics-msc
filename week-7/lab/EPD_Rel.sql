SET VERIFY ON
SET ECHO ON

CREATE TABLE EPD
    (EMP_NO         CHAR(2),
     PROJ_NO        CHAR(2),
     DEPT_NO        CHAR(2),
     CONSTRAINT     PKEY_EPD PRIMARY KEY (EMP_NO, PROJ_NO, DEPT_NO)
)
/
INSERT INTO EPD
    VALUES ('E1', 'P1', 'D1')
/
INSERT INTO EPD
    VALUES ('E1', 'P2', 'D1')
/
INSERT INTO EPD
    VALUES ('E2', 'P1', 'D1')
/
INSERT INTO EPD
    VALUES ('E2', 'P5', 'D3')
/
INSERT INTO EPD
    VALUES ('E4', 'P4', 'D6')
/
INSERT INTO EPD
    VALUES ('E5', 'P4', 'D6')
/
INSERT INTO EPD
   VALUES ('E6', 'P4', 'D7')
/
INSERT INTO EPD
    VALUES ('E9', 'P4', 'D7')
/
INSERT INTO EPD
    VALUES ('E5', 'P3', 'D9')
/
INSERT INTO EPD
    VALUES ('E7', 'P3', 'D9')
/

COMMIT;

SELECT * FROM EPD;

