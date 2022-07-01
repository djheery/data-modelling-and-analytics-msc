-- Commission calculations 
-- Add Relational Algebra  

SET SERVEROUTPUT ON;


CREATE OR REPLACE TYPE STR_SEARCH AS VARRAY(5) OF VARCHAR(20);
/

CREATE OR REPLACE FUNCTION calc_stamp_duty (sale_price IN NUMBER) 
  RETURN NUMBER IS 
    THRESH_1 NUMBER := 125001;
    THRESH_2 NUMBER := 250001;
    THRESH_3 NUMBER := 925001;
    THRESH_4 NUMBER := 1500000;

    THRESH_1_RATE NUMBER := 0.02;
    THRESH_2_RATE NUMBER := 0.05;
    THRESH_3_RATE NUMBER := 0.1;
    THRESH_4_RATE NUMBER := 0.12;

    CALC_STAMP_DUTY NUMBER;

  BEGIN 
    CASE 
      WHEN sale_price > THRESH_4 THEN 
        CALC_STAMP_DUTY := sale_price * THRESH_4_RATE;
      WHEN sale_price > THRESH_3 AND sale_price < THRESH_4 THEN
        CALC_STAMP_DUTY := sale_price * THRESH_3_RATE;
      WHEN sale_price > THRESH_2 AND sale_price < THRESH_3 THEN 
        CALC_STAMP_DUTY := sale_price * THRESH_2_RATE;
      WHEN sale_price > THRESH_1 AND sale_price < THRESH_2 THEN
        CALC_STAMP_DUTY := sale_price * THRESH_1_RATE;
      ELSE 
        CALC_STAMP_DUTY := 0;
    END CASE;

    RETURN CALC_STAMP_DUTY; 
END;
/


CREATE OR REPLACE PROCEDURE find_sold_properties
  (
    TOWNS_OR_CITIES IN STR_SEARCH,
    MIN_SOLD_PRICE IN NUMBER,
    MAX_SOLD_PRICE IN NUMBER,
    MAX_YEAR IN DATE,
    MIN_YEAR IN DATE
  )

  AS

  CURSOR sold_props IS 
    SELECT sp.buyer, sp.sale_price,  a.addr_l1, 
           sp.sale_date, p.list_price, p.list_date, 
           c.cust_fname, c.cust_lname, c.cust_email, tc.tc_name, tca.tca_name
    FROM SOLD_PROPERTIES sp, PROPERTIES p, 
         PORTAL_ADDRESSES a, CUSTOMER c, 
         TOWN_CITY_AREA tca, TOWNS_AND_CITIES tc  
    WHERE sp.buyer = c.cust_id
    AND sp.prop_id = p.prop_id
    AND p.prop_addr = a.addr_id
    AND a.tca_id = tca.tca_id
    AND tca.tc_code = tc.tc_code 
    AND tc.tc_name IN (SELECT * FROM TABLE(TOWNS_OR_CITIES))
    AND sp.sale_date BETWEEN MIN_YEAR AND MAX_YEAR 
    AND sp.sale_price BETWEEN MIN_SOLD_PRICE AND MAX_SOLD_PRICE;

    v_counter INTEGER;

    NO_RESULTS_FOUND EXCEPTION;
    PRAGMA EXCEPTION_INIT(NO_RESULTS_FOUND, -20001);

    YEAR_MISMATCH EXCEPTION;
    PRAGMA EXCEPTION_INIT(YEAR_MISMATCH, -20002);

    SALE_PRICE_MISMATCH EXCEPTION;
    PRAGMA EXCEPTION_INIT(SALE_PRICE_MISMATCH, -20003);

  BEGIN

    DBMS_OUTPUT.PUT_LINE('=============================');
    DBMS_OUTPUT.PUT_LINE('Searching for Sold Properties');
    DBMS_OUTPUT.PUT_LINE('=============================');
    v_counter := 0;

    IF MIN_YEAR > MAX_YEAR THEN 
      RAISE YEAR_MISMATCH;
    END IF;
    
    IF MAX_SOLD_PRICE < MIN_SOLD_PRICE THEN
      RAISE SALE_PRICE_MISMATCH;
    END IF;
    

    FOR sold IN sold_props LOOP
        DBMS_OUTPUT.PUT_LINE('Property Address: ' || sold.addr_l1);
        DBMS_OUTPUT.PUT_LINE('Property Area: ' || sold.tca_name);
        DBMS_OUTPUT.PUT_LINE('Property Sale Date: ' || sold.sale_date);
        DBMS_OUTPUT.PUT_LINE('Property Town or City: ' || sold.tc_name);
        DBMS_OUTPUT.PUT_LINE('Property Listed Price: £' || sold.list_price);
        DBMS_OUTPUT.PUT_LINE('Property Sold For: £' || sold.sale_price);
        DBMS_OUTPUT.PUT_LINE('Estimated Stamp Duty: £' || calc_stamp_duty(sold.sale_price));
        DBMS_OUTPUT.PUT_LINE('Buyer Name: ' || sold.cust_fname || ' ' || sold.cust_lname);
        DBMS_OUTPUT.PUT_LINE('Buyer Email: ' || sold.cust_email);
        DBMS_OUTPUT.PUT_LINE('=============================');
        v_counter := v_counter + 1;
      END LOOP;

    IF v_counter = 0 THEN
      RAISE NO_RESULTS_FOUND;
    ELSE 
      DBMS_OUTPUT.PUT_LINE(v_counter || ' Results Found for your property search');
    END IF;

    EXCEPTION
    WHEN NO_RESULTS_FOUND THEN 
      DBMS_OUTPUT.PUT_LINE('We could not find a match for your search');
    WHEN YEAR_MISMATCH THEN 
      DBMS_OUTPUT.PUT_LINE('Your min year input is dated after your max year input, you should correct this for this procedure to run correctly');
      DBMS_OUTPUT.PUT_LINE('Min year input: ' || MIN_YEAR);
      DBMS_OUTPUT.PUT_LINE('Max year input: ' || MAX_YEAR);
    WHEN SALE_PRICE_MISMATCH THEN 
      DBMS_OUTPUT.PUT_LINE('Your min sale price input is higher than your max sale price input, you should correct this for this procedure to run correctly');
      DBMS_OUTPUT.PUT_LINE('Min year input entered: ' || MIN_SOLD_PRICE);
      DBMS_OUTPUT.PUT_LINE('Max year input entered: ' || MAX_SOLD_PRICE);
    WHEN OTHERS THEN 
      DBMS_OUTPUT.PUT_LINE('Operation');
              DBMS_OUTPUT.PUT_LINE('Operation Failed ' || 'SQLCODE: ' || SQLCODE);
      DBMS_OUTPUT.PUT_LINE('SQL Error Message: ' || SQLERRM);
      ROLLBACK;
END;
/

DECLARE 
  TC_VARRAY STR_SEARCH;
  MAX_PRICE NUMBER(7);
  MIN_PRICE NUMBER(7);
  MAX_DATE DATE;
  MIN_DATE DATE;
BEGIN 
  TC_VARRAY := STR_SEARCH('Newcastle-Upon-Tyne', 'Sunderland', 'Gateshead', 'Cramlington');
  MIN_PRICE := 195000;
  MAX_PRICE := 375000; 

  MIN_DATE := '01-JAN-2018';
  MAX_DATE := '31-DEC-2022';

  find_sold_properties(TC_VARRAY, MIN_PRICE, MAX_PRICE, MAX_DATE, MIN_DATE);
END;
/
