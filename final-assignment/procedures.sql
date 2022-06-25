-- Find Listed Properties

CREATE OR REPLACE PROCEDURE find_houses_locations 
  (
    LOC_1 IN CHAR, 
    LOC_2 IN CHAR, 
    LOC_3 IN CHAR,
    CITY_CODE IN CHAR,
    ROOM_NO IN NUMBER
  )

  AS LOC_DOES_NOT_EXIST EXCEPTION;
  PRAGMA_EXCEPTION_INIT(LOC_1_DOES_NOT_EXIST, -20000)

  CURSOR PROPS IS 
  SELECT COUNT(PR.prop_id) as Room_count, PA.prop_addr_l1 as addr
         pa.loc_id, l.loc_name
  FROM PROP_ROOMS pr, PROP_ADDR pa
  WHERE pr.prop_id = pa.prop_id
  AND pr.room_type = 'Bedroom'
  GROUP BY pa.prop_addr_l1
  ORDER BY COUNT(pr.prop_id); 

  BEGIN
    DBMS_OUTPUT.PUT_LINE( 'Searching for houses in: ' ||
                          LOC_1 || ', ' || 
                          LOC_2 || ', ' || 
                          LOC_3 );
    DBMS_OUTPUT.PUT_LINE('In City' || CITY_CODE );

    FOR prop IN props LOOP
      IF PROP.room_count >= ROOM_NO
        SELECT INTO prop

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

-- Get the room number count

CREATE OR REPLACE PROCEDURE COUNT_ROOMS (ROOM_NO IN NUMBER)

  AS PROP_ID_DOES_NOT_EXIST EXCEPTION;
  PRAGMA EXCEPTION_INIT(PROP_ID_DOES_NOT_EXIST, -20000);

  CURSOR PROPS IS 
    SELECT COUNT(PR.prop_id) as Room_count, PA.prop_addr_l1 as addr
    FROM PROP_ROOMS pr, PROP_ADDR pa, CITY_LOCATION l
    WHERE pa.prop_id = pr.prop_id
    AND pa.loc_id = l.loc_id
    AND pr.room_type = 'Bedroom'
    GROUP BY pa.prop_addr_l1
    ORDER BY COUNT(pr.prop_id); 

BEGIN 
  DBMS_OUTPUT.PUT_LINE('Listing Properties with Room Number');
  DBMS_OUTPUT.PUT_LINE('');

  FOR prop IN props LOOP
    IF prop.room_count >= ROOM_NO
      THEN
        DECLARE prop_join;
          
        DBMS_OUTPUT.PUT_LINE('Prop Match: ' || prop.addr );
        DBMS_OUTPUT.PUT_LINE('Bedroom Count: ' || prop.room_count);
        DBMS_OUTPUT.PUT_LINE('Location: ' || prop.loc_name);
        DBMS_OUTPUT.PUT_LINE('');
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

-- Find Houses in locations

CREATE OR REPLACE PROCEDURE FIND_HOUSES_IN_LOCATIONS ( LN IN CHAR,
    CC IN CHAR
  )
  AS
  CURSOR LOC_PROPS IS 
    SELECT pa.prop_addr_l1 as addr, l.loc_name as Location,
           c.city_name as city_name, c.city_code 
    FROM PROP_ADDR pa, CITY_LOCATION l, CITY c 
    WHERE pa.loc_id = l.loc_id
    AND l.city_code = c.city_code;


  BEGIN 
  DBMS_OUTPUT.PUT_LINE('Listing Properties in location');
  DBMS_OUTPUT.PUT_LINE('===================================');

  FOR prop IN loc_props LOOP
    IF PROP.location = LN
      THEN
        IF PROP.city_code = cc
          THEN
            DBMS_OUTPUT.PUT_LINE('Prop Address: ' || prop.addr );
            DBMS_OUTPUT.PUT_LINE('Location Name: ' || prop.location);
            DBMS_OUTPUT.PUT_LINE('City Name: ' || prop.city_name);
            DBMS_OUTPUT.PUT_LINE('-----------------------------------');
        END IF;
    END IF;
  END LOOP;
    DBMS_OUTPUT.PUT_LINE('===================================');  
  COMMIT;
  EXCEPTION
    WHEN OTHERS THEN 
      DBMS_OUTPUT.PUT_LINE('Operation');
              DBMS_OUTPUT.PUT_LINE('Operation Failed ' || 'SQLCODE: ' || SQLCODE);
      DBMS_OUTPUT.PUT_LINE('SQL Error Message: ' || SQLERRM);
      ROLLBACK;
  END;
  /

  CREATE OR REPLACE PROCEDURE GET_NUM_ROOMS (PROP_ID IN CHAR)
    AS 
      CURSOR FIND_PROP IS
        SELECT COUNT(*) FROM PROP_ROOMS PR
        WHERE PR.prop_id = PROP_ID
        AND PR.room_type = 'Bedroom';
      
    BEGIN 

    FOR PROP IN FIND_PROP
      
