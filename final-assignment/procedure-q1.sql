
-- Add Properties To better match the query 
-- Add Date Check
-- Add Exception Handlers
-- Add Relational Algebra
-- Validate that the queries are correct manually 
-- Consider splitting the procedures


-- Find Listed Properties

SET SERVEROUTPUT ON;


CREATE OR REPLACE TYPE STR_SEARCH AS VARRAY(3) OF VARCHAR(15);
/


CREATE OR REPLACE PROCEDURE find_a_house 
  (
    LOC IN STR_SEARCH,
    PROP_TYPES IN STR_SEARCH,
    C_CODE IN CHAR,
    ROOM_NO IN NUMBER,
    L_TYPE IN CHAR
  )

  AS LOC_DOES_NOT_EXIST EXCEPTION;
  PRAGMA EXCEPTION_INIT(LOC_DOES_NOT_EXIST, -20004);

  CURSOR PROPS IS 
    SELECT COUNT(PR.prop_id) AS room_count, 
            PA.prop_addr_l1 AS addr, 
            l.loc_name, 
            c.city_name, 
            p.prop_type, 
            p.list_type 
    FROM PROP_ROOMS pr, PROP_ADDR pa
    JOIN CITY_LOCATION l ON l.loc_id = pa.loc_id
    JOIN CITY c ON c.city_code = l.city_code
    JOIN PROPERTIES p ON p.prop_id = pa.prop_id
    WHERE pr.prop_id = pa.prop_id
    AND pr.room_type = 'Bedroom'
    AND p.list_type = L_TYPE
    AND c.city_name = C_CODE
    AND l.loc_name IN (SELECT * FROM TABLE(LOC))
    AND p.prop_type IN (SELECT * FROM TABLE(PROP_TYPES))
    GROUP BY pa.prop_addr_l1, l.loc_name, c.city_name, p.prop_type, p.list_type
    ORDER BY COUNT(pr.prop_id); 


  BEGIN
    DBMS_OUTPUT.PUT_LINE( 'Searching for houses');
    DBMS_OUTPUT.PUT_LINE('In City: ' || C_CODE );
    DBMS_OUTPUT.PUT_LINE('In City: ' || L_TYPE );
    DBMS_OUTPUT.PUT_LINE('===================================');

    FOR prop IN props LOOP
      IF PROP.room_count >= ROOM_NO
        THEN       
            DBMS_OUTPUT.PUT_LINE('Prop Match: ' || prop.addr );
            DBMS_OUTPUT.PUT_LINE('Bedroom Count: ' || prop.room_count);
            DBMS_OUTPUT.PUT_LINE('Property Type: ' || prop.prop_type);
            DBMS_OUTPUT.PUT_LINE('Location: ' || prop.loc_name);
            DBMS_OUTPUT.PUT_LINE('City: ' || prop.city_name);
            DBMS_OUTPUT.PUT_LINE('List Type: ' || prop.list_type);
            DBMS_OUTPUT.PUT_LINE('===================================');
      END IF; 
  END LOOP;
  COMMIT;
  EXCEPTION
    WHEN OTHERS THEN 
      DBMS_OUTPUT.PUT_LINE('Operation');
              DBMS_OUTPUT.PUT_LINE('Operation Failed ' || 'SQLCODE: ' || SQLCODE);
      DBMS_OUTPUT.PUT_LINE('SQL Error Message: ' || SQLERRM);
      ROLLBACK;
  END;
  /


DECLARE 
  LOC_VARRAY STR_SEARCH;
  PROP_TYPE_VARRAY STR_SEARCH;
BEGIN 
  LOC_VARRAY := STR_SEARCH('Gateshead', 'Heaton', 'Fenham');
  PROP_TYPE_VARRAY := STR_SEARCH('Semi-Detached', 'Terraced', 'Detached');
  find_a_house(LOC_VARRAY,  PROP_TYPE_VARRAY, 'Newcastle-Upon-Tyne', 2, 'FS');
END;
/



-----------------------
----- Test Select -----
-----------------------

SELECT p.prop_type, p.list_type, SUBSTR(pa.prop_addr_l1, 0, 10) AS addr, l.loc_name as loc, c.city_name 
FROM PROPERTIES p, PROP_ADDR pa, CITY_LOCATION l, CITY C
WHERE p.prop_id = pa.prop_id 
AND pa.loc_id = l.loc_id 
AND l.city_code = c.city_code 
AND c.city_name = 'Newcastle-Upon-Tyne';