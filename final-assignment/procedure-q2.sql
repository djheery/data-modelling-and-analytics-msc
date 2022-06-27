-- Add sold date to sp property listings 
-- Populate sold properties more 
-- 

SET SERVEROUPUT ON;


CREATE OR REPLACE TYPE STR_SEARCH AS VARRAY(3) OF VARCHAR(15);
/


CREATE OR REPLACE PROCEDURE find_sold_properties
  (
    LOC IN LOCATIONS,
    MIN_SOLD_PRICE IN NUMBER,
    MAX_SOLD_PRICE IN NUMBER,
    MAX_YEAR IN DATE,
    MIN_YEAR IN DATE
  );

  CURSOR sold_props IS 
    SELECT sp.buyer, sp.sold_price, pa.prop_addr_l1, sp.sold_date 
           p.list_price, p.list_date, c.cust_full_name, l.loc_name
    FROM SOLD_PROPERTIES sp, PROPERTIES p, PROP_ADDR pa, CUSTOMER c, CITY_LOCATION l 
    WHERE sp.buyer = c.cust_id
    AND sp.prop_id = p.prop_id
    AND sp.prop_id = pa.prop_id;
    AND pa.loc_id = l.loc_id
    AND l.loc_name IN (SELECT * FROM TABLE(LOC))
    AND sp.sold_date BETWEEN MAX_YEAR AND MIN_YEAR 
    AND sp.sold_price BETWEEN MAX_SOLD_PRICE AND MIN_SOLD_PRICE 

          
  BEGIN
    FOR sold IN sold_props LOOP
              DBMS_OUTPUT.PUT_LINE('A Match Has been Found');
          END IF;
        END IF;
      END LOOP;
    END LOOP;
  CURSOR 

END;



