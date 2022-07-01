-- Join between Staff, Staff Contact, Branch Addr and City\

SELECT s.s_full_name AS FullName, 
       SUBSTR(sc.staff_email, 0, 10) AS Email, 
       SUBSTR(ba.branch_addr_l1, 0, 10) AS BranchAddress, 
       c.city_name AS City
FROM STAFF s, STAFF_CONTACT sc, BRANCH_ADDR ba, CITY c
WHERE s.staff_id = sc.staff_id
AND s.branch_id = ba.branch_id
AND ba.branch_city_code = c.city_code
AND c.city_name = 'Newcastle-Upon-Tyne';

-- Join between Staff, Branch_addr, Branch

SELECT s.s_full_name AS NAME,
       ba.branch_post_code AS POST_CODE,
       b.branch_id AS BRANCH_ID
FROM STAFF s, BRANCH b, BRANCH_ADDR ba
WHERE s.staff_id = b.branch_manager
AND b.branch_id = ba.branch_id;

-- Join between Property Owner Customer_contact adn Branch_contact 

SELECT 
  po.cust_id AS ID, 
  SUBSTR(bc.branch_email, 0, 20) AS B_EMAIL, 
  SUBSTR(cc.cust_email, 0, 20) AS C_EMAIL
FROM PROP_OWNER po, BRANCH_CONTACT bc, CUSTOMER_CONTACT cc
WHERE po.cust_id = cc.cust_id
AND bc.branch_id = po.branch_id 
AND po.po_id = 'P0001';

-- Join Staff and Payroll Details

SELECT * FROM STAFF, PAYROLL_DETAILS
INNER JOIN 
STAFF.payroll ON PAYROLL_DETAILS.ni;

--  

SELECT s.s_full_name AS FullName, 
       SUBSTR(sc.staff_email, 0, 10) AS Email, 
       SUBSTR(ba.branch_addr_l1, 0, 10) AS BranchAddress, 
       c.city_name AS City
FROM STAFF s, STAFF_CONTACT sc, BRANCH_ADDR ba, CITY c
WHERE s.staff_id = sc.staff_id
AND s.branch_id = ba.branch_id
AND ba.branch_city_code = c.city_code
AND c.city_name = 'Newcastle-Upon-Tyne';

-- 

SELECT po.po_id as ID,
       substr(c.cust_full_name, 0, 12) as NAME, 
       substr(cc.cust_email, 0, 12) as EMAIL,
       prop.list_price as LIST_PRICE,
       prop.list_type as LIST_TYPE
FROM   PROP_OWNER po, 
       CUSTOMER c, 
       CUSTOMER_CONTACT cc, 
       PROPERTIES prop
WHERE po.po_id = prop.po_id
AND c.cust_id = po.cust_id
AND cc.cust_id = c.cust_id
AND po.po_id = 'PO001';

--

SELECT b.branch_manager, s.s_full_name, sc.staff_email
FROM STAFF s, BRANCH b, STAFF_CONTACT sc
WHERE b.branch_manager = s.staff_id
AND b.branch_manager = sc.staff_id;

--

SELECT count(cl.loc_name), c.city_name
FROM CITY c, CITY_LOCATION cl
WHERE cl.city_code = c.city_code
GROUP BY c.city_name
ORDER BY COUNT(cl.loc_name) desc;

SELECT pa.prop_addr_l1, p.list_type, p.prop_type, c.city_name
FROM PROPERTIES p, PROP_ROOMS pr, PROP_ADDR pa, CITY_LOCATION l, CITY c
WHERE p.prop_id = pa.prop_id
AND pa.loc_id = l.loc_id
AND l.city_code = c.city_code
AND c.city_name = 'Newcastle';

--

SELECT
    Substr(c.cust_full_name, 0, 12) AS Full_Name,
    cc.cust_primary_tel AS tel,
    substr(pa.prop_addr_l1, 0, 15) AS Addr,
    sp.sold_price
FROM CUSTOMER c, CUSTOMER_CONTACT cc, PROP_ADDR pa, SOLD_PROPERTIES sp
WHERE sp.buyer = cc.cust_id
AND sp.buyer = c.cust_id
AND sp.prop_id = pa.prop_id;

-- Select Rooms Prop Rooms 

    SELECT COUNT(PR.prop_id) as Room_count, a.addr_l1 as addr, 
           tca.tca_name, tc.tc_name
    FROM PROPERTIES p, PROP_ROOMS pr, 
         PORTAL_ADDRESSES a, TOWN_CITY_AREA tca,
         TOWNS_AND_CITIES tc  
    WHERE p.prop_id = pr.prop_id  
    AND tca.tca_id = a.tca_id
    AND tc.tc_code = tc.tc_code
    AND a.addr_id = p.prop_addr 
    AND tc.tc_code = 'NE1'
    AND tca.tca_name = 'Jesmond'
    AND pr.room_type = 'Bedroom'
    GROUP BY a.addr_l1, tca.tca_name, tc.tc_name
    ORDER BY COUNT(pr.prop_id); 


SELECT p.prop_type, a.addr_l1
       FROM PROPERTIES p, PORTAL_ADDRESSES a
       WHERE p.prop_addr = a.addr_id
-- Select * 

SELECT 

execute find_houses_locations('Gateshead', 'Fenham', 'Heaton', 'Newcastle-Upon-Tyne', 2);


   SELECT COUNT(PR.prop_id) as Room_count, SUBSTR(PA.prop_addr_l1, 0, 12) as addr, SUBSTR(l.loc_name, 0, 10), c.city_name, p.prop_type, p.list_type, p.list_date 
    FROM PROP_ROOMS pr, PROP_ADDR pa
    JOIN CITY_LOCATION l ON l.loc_id = pa.loc_id
    JOIN CITY c ON c.city_code = l.city_code
    JOIN PROPERTIES p ON p.prop_id = pa.prop_id
    WHERE pr.prop_id = pa.prop_id
    AND pr.room_type = 'Bedroom'
    AND p.list_type = 'FS'
    AND c.city_name = 'Newcastle-Upon-Tyne'
    GROUP BY pa.prop_addr_l1, l.loc_name, c.city_name, p.prop_type, p.list_type
    ORDER BY COUNT(pr.prop_id); 

SELECT a.addr_l1, p.*
FROM PORTAL_ADDRESSES a, PROPERTIES p
WHERE p.prop_addr = a.addr_id 
AND p.list_date >= (SYSDATE - 20);

CREATE TABLE TEST_TABLE1 (
  PROP_PREFIX CHAR(2) DEFAULT 'PL',
  PROP_ID NUMBER GENERATED ALWAYS AS IDENTITY,
  PROP_NAME VARCHAR(30) NOT NULL,
  CONSTRAINT PROP_PRIMARY PRIMARY KEY (PROP_PREFIX, PROP_ID)
);

INSERT INTO TEST_TABLE1 (prop_name)
  VALUE ('Testing 12');
INSERT INTO TEST_TABLE1 (prop_name)
  VALUE ('Testing 123');
INSERT INTO TEST_TABLE1 (prop_name)
  VALUE ('Testing 124');
INSERT INTO TEST_TABLE1 (prop_name)
  VALUE ('Testing 125');

-- Testing timestamp 

CREATE TABLE TIME_TEST (
  ID NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  V_TIME TIMESTAMP NOT NULL
);

INSERT INTO TIME_TEST (V_TIME) 
  VALUES ('02-MAY-2022 10:00:00');

SELECT SUBSTR(a.addr_l1, 0, 15) "Addr",
       a.post_code,
       SUBSTR(tca.tca_name, 0, 10) "Area",
       SUBSTR(tc.tc_name , 0, 10) "City"
       p.list_price,
       p.prop_type
FROM PORTAL_ADDRESSES a, 
     TOWN_CITY_AREA tca, 
     TOWNS_AND_CITIES tc
     PROPERTIES p 
WHERE a.addr_id = p.prop_addr
AND a.tca_id = tca.tca_id
AND tca.tc_code = tc.tc_code
AND tc.tc_name IN ('Newcastle-Upon-Tyne', 'Leeds', 'Luton');

SELECT SUBSTR(s.staff_fname, 0, 10) "First Name",
       SUBSTR(s.staff_email, 0, 10) "Email",
       SUBSTR(a.addr_l1, 0, 15) "Addr",
       a.post_code,
       SUBSTR(tca.tca_name, 0, 10) "Area",
       SUBSTR(tc.tc_name , 0, 10) "City"
FROM PORTAL_ADDRESSES a, 
     TOWN_CITY_AREA tca, 
     TOWNS_AND_CITIES tc,
     STAFF s
WHERE a.addr_id = s.staff_addr
AND a.tca_id = tca.tca_id
AND tca.tc_code = tc.tc_code;

SELECT SUBSTR(b.branch_email, 0, 15) "Email",
       SUBSTR(s.staff_email, 0, 10) "Manager",
       SUBSTR(a.addr_l1, 0, 15) "Addr",
       a.post_code,
       SUBSTR(tca.tca_name, 0, 10) "Area",
       SUBSTR(tc.tc_name , 0, 10) "City"
FROM PORTAL_ADDRESSES a, 
     TOWN_CITY_AREA tca, 
     TOWNS_AND_CITIES tc,
     STAFF s,
     BRANCH b
WHERE a.addr_id = b.branch_addr
AND b.branch_manager = s.staff_id
AND a.tca_id = tca.tca_id
AND tca.tc_code = tc.tc_code;

SELECT SUBSTR(c.cust_fname, 0, 10) "FNAME",
       SUBSTR(c.cust_email, 0, 15) "Email",
       p.prop_type,
       p.list_price,
       P.list_type,
       po.po_id,
       SUBSTR(a.addr_l1, 0, 15) "Addr"
FROM PROPERTIES p, CUSTOMER c, PORTAL_ADDRESSES a, PROP_OWNER po
WHERE po.cust_id = c.cust_id
AND po.po_id = p.po_id 
AND p.prop_addr = a.addr_id;