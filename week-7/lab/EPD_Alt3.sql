SET VERIFY ON 
SET ECHO ON 

REM Implementing Nested Relational

CREATE TYPE EP AS OBJECT (
  EMP_NO CHAR(2),
  PROJ_NO CHAR(2)
);
/

CREATE TYPE EP_TABLE AS TABLE OF EP;
/

CREATE TABLE DEPT_EP (
  DEPT_NO  CHAR(2),
  Set_of_EP EP_TABLE
)
NESTED TABLE Set_of_EP STORE AS EPTABLE
/

INSERT INTO DEPT_EP VALUES (
  'D1', EP_TABLE(
    EP('E1', 'P1'),
    EP('E2', 'P2')
  )
)
/

INSERT INTO DEPT_EP VALUES (
  'D2', EP_TABLE(
    EP('E4', 'P4')
  )
)
/

INSERT INTO DEPT_EP VALUES (
  'D3', EP_TABLE(
    EP('E2', 'P5')
  )
)
/
INSERT INTO DEPT_EP VALUES (
  'D4', EP_TABLE(
    EP('E3', 'P3'),
    EP('E6', 'P6')
  )
)
/
INSERT INTO DEPT_EP VALUES (
  'D5', EP_TABLE(
    EP('E5', 'P5'),
    EP('E4', 'P1')
  )
)
/

COMMIT;

COLUMN SET_OF_EP FORMAT A50

SELECT * FROM DEPT_EP;

SELECT d.dept_no, ep.emp_no, ep.proj_no 
FROM DEPT_EP d, TABLE(d.set_of_ep) ep
/

select set_of_ep FROM DEPT_EP
where dept_no = 'D1';

