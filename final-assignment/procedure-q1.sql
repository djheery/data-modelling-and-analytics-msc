-- Add Relational Algebra
-- Consider splitting the procedures

REM Relational Algebra 

PD = π  
π 

REM Find Listed Properties

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION check_town_or_city_exists (c_code IN VARCHAR)
  RETURN BOOLEAN IS
    tc_found NUMBER;
  BEGIN 
    SELECT count(*) INTO tc_found 
    FROM TOWNS_AND_CITIES tc
    WHERE tc.tc_code = c_code;

    IF tc_found = 1 THEN 
      RETURN TRUE;
    ELSE 
      RETURN FALSE; 
    END IF;
  END;
/
  
CREATE OR REPLACE PROCEDURE print_cities_and_codes AS

  CURSOR TC IS 
    SELECT * FROM TOWNS_AND_CITIES;
  
  BEGIN 
    FOR T IN TC LOOP
      DBMS_OUTPUT.PUT_LINE('--------------------------');
      DBMS_OUTPUT.PUT_LINE('Place Code: ' || T.tc_code);
      DBMS_OUTPUT.PUT_LINE('Place Name : ' || T.tc_name);
      DBMS_OUTPUT.PUT_LINE('--------------------------');
    END LOOP;
END;
/


CREATE OR REPLACE TYPE STR_SEARCH AS VARRAY(5) OF VARCHAR(20);
/


CREATE OR REPLACE PROCEDURE find_a_house (LOC IN STR_SEARCH,
                                          PROP_TYPES IN STR_SEARCH,
                                          TOC_CODE IN CHAR,
                                          ROOM_NO IN NUMBER,
                                          L_TYPE IN CHAR,
                                          DAYS_LISTED IN NUMBER)

  AS 

  CURSOR PROPS IS 
    SELECT COUNT(PR.prop_id) AS room_count, 
            pa.addr_l1 AS addr, 
            a.tca_name, tc.tc_name, 
            p.prop_type, p.list_type, p.list_date, p.list_price   
    FROM PROP_ROOMS pr, PROP_ADDR pa, 
         PROPERTIES p, AREAS a, 
         TOWNS_AND_CITIES tc 
    WHERE pr.prop_id = p.prop_id
    AND pa.tca_id = tca.tca_id
    AND tca.tc_code = tc.tc_code
    AND p.prop_addr = a.addr_id
    AND pr.room_type = 'Bedroom'
    AND p.list_type = L_TYPE
    AND tc.tc_code = TOC_CODE
    AND tca.tca_name IN (SELECT * FROM TABLE(LOC))
    AND p.prop_type IN (SELECT * FROM TABLE(PROP_TYPES))
    AND p.list_date >= (SYSDATE - DAYS_LISTED)
    GROUP BY a.addr_l1, tca.tca_name, tc.tc_name, 
    p.prop_type, p.list_type, p.list_date, p.list_price;

    v_counter INTEGER;

    TC_DOES_NOT_EXIST EXCEPTION;
    PRAGMA EXCEPTION_INIT (TC_DOES_NOT_EXIST, -20004);

    LIST_TYPE_DOES_NOT_EXIST EXCEPTION;
    PRAGMA EXCEPTION_INIT (LIST_TYPE_DOES_NOT_EXIST, -20005);

    ROOM_NUM_LOW EXCEPTION;
    PRAGMA EXCEPTION_INIT (ROOM_NUM_LOW, -20006);

    NO_RESULTS_FOUND EXCEPTION;
    PRAGMA EXCEPTION_INIT(NO_RESULTS_FOUND, -20007);

  BEGIN
    DBMS_OUTPUT.PUT_LINE('===================================');
    DBMS_OUTPUT.PUT_LINE( 'Searching for houses');
    DBMS_OUTPUT.PUT_LINE('===================================');

    IF NOT check_town_or_city_exists(TOC_CODE) THEN 
      RAISE TC_DOES_NOT_EXIST;
    END IF;

    IF L_TYPE NOT IN ('FS', 'FL', 'S', 'L') THEN 
      RAISE LIST_TYPE_DOES_NOT_EXIST;
    END IF;

    IF ROOM_NO < 1 THEN 
      RAISE ROOM_NUM_LOW;
    END IF; 

    v_counter := 0;

    FOR prop IN props LOOP
      IF PROP.room_count >= ROOM_NO
        THEN       
            DBMS_OUTPUT.PUT_LINE('Prop Match: ' || prop.addr );
            DBMS_OUTPUT.PUT_LINE('Bedroom Count: ' || prop.room_count);
            DBMS_OUTPUT.PUT_LINE('Property Type: ' || prop.prop_type);
            DBMS_OUTPUT.PUT_LINE('Location: ' || prop.tca_name);
            DBMS_OUTPUT.PUT_LINE('City: ' || prop.tc_name);
            DBMS_OUTPUT.PUT_LINE('List Type: ' || prop.list_type);
            DBMS_OUTPUT.PUT_LINE('List Price: ' || prop.list_price);
            DBMS_OUTPUT.PUT_LINE('List date: ' || prop.list_date);
            DBMS_OUTPUT.PUT_LINE('===================================');
            v_counter := v_counter + 1;
      END IF; 
  END LOOP;
  
  IF v_counter = 0 THEN 
    RAISE NO_RESULTS_FOUND;
  ELSE 
    DBMS_OUTPUT.PUT_LINE(v_counter || ' Results Found for your property search');
  END IF; 

  COMMIT;
  EXCEPTION
    WHEN NO_RESULTS_FOUND THEN 
      DBMS_OUTPUT.PUT_LINE('We could not find a match for your search');
      ROLLBACK;
    WHEN ROOM_NUM_LOW THEN 
      DBMS_OUTPUT.PUT_LINE('Please enter a room amount of 1 or above');
      ROLLBACK;
    WHEN LIST_TYPE_DOES_NOT_EXIST THEN 
      DBMS_OUTPUT.PUT_LINE('The list type you entered does not exist');
      DBMS_OUTPUT.PUT_LINE('The following list types are allowed: ');
      DBMS_OUTPUT.PUT_LINE('"FS" ::: For Sale');
      DBMS_OUTPUT.PUT_LINE('"FL" ::: For Let');
      DBMS_OUTPUT.PUT_LINE('"S" ::: Sold');
      DBMS_OUTPUT.PUT_LINE('"L" ::: Let');
      DBMS_OUTPUT.PUT_LINE('-----------------');
      DBMS_OUTPUT.PUT_LINE('You entered: ' || L_TYPE);
      ROLLBACK;
    WHEN TC_DOES_NOT_EXIST THEN
       DBMS_OUTPUT.PUT_LINE('The town or city code you entered does not exist');
       DBMS_OUTPUT.PUT_LINE('Below is a list of known places with along with their codes: ');
       print_cities_and_codes();
       DBMS_OUTPUT.PUT_LINE('The town or city code you entered was: ' || TOC_CODE);
       ROLLBACK;
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
  DAYS_LISTED NUMBER(4, 0);
BEGIN 
  LOC_VARRAY := STR_SEARCH('Fenham', 'Heaton');
  PROP_TYPE_VARRAY := STR_SEARCH('Semi-Detached', 'Detached');
  DAYS_LISTED := 42;
  find_a_house(LOC_VARRAY,  PROP_TYPE_VARRAY, 'NE1', 4, 'FS', DAYS_LISTED);
END;
/