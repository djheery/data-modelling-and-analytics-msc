-- Desc Statements

DESC COUNTIES;
DESC CITY;
DESC CITY_LOCATION;
DESC CUSTOMER;
DESC CUSTOMER_CONTACT;
DESC CUSTOMER_ADDR;
DESC BRANCH;
DESC BRANCH_CONTACT;
DESC BRANCH_ADDR;
DESC STAFF;
DESC STAFF_CONTACT;
DESC STAFF_ADDR;
DESC PAYROLL_DETAILS;
DESC PROP_OWNER;
DESC PROPERTIES;
DESC PROP_ADDR;
DESC PROP_ROOMS;
DESC SOLD_PROPERTIES;
DESC TENNANTS;
DESC DPS;
DESC VIEWING;
DESC ESTATE_AGENT;
DESC COMMENTS;

-- SELECT STATEMENTS

SELECT * FROM COUNTIES;
SELECT * FROM CITY;
SELECT * FROM CITY_LOCATION;
SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMER_CONTACT;
SELECT * FROM CUSTOMER_ADDR;
SELECT * FROM BRANCH;
SELECT * FROM BRANCH_CONTACT;
SELECT * FROM BRANCH_ADDR;
SELECT * FROM STAFF;
SELECT * FROM STAFF_CONTACT;
SELECT * FROM STAFF_ADDR;
SELECT * FROM PAYROLL_DETAILS;
SELECT * FROM PROP_OWNER;
SELECT * FROM PROPERTIES;
SELECT * FROM PROP_ADDR;
SELECT * FROM PROP_ROOMS;
SELECT * FROM SOLD_PROPERTIES;
SELECT * FROM TENNANTS;
SELECT * FROM DPS;
SELECT * FROM VIEWING;
SELECT * FROM ESTATE_AGENT;
SELECT * FROM COMMENTS;

---------------
--- Viewing ---
---------------

-- Viewing/ Customer Join 

SELECT c.cust_full_name AS FNAME, 
       SUBSTR(cc.cust_email, 0, 12) AS EMAIL, 
       SUBSTR(cc.cust_primary_tel, 0, 12) AS TEL,
       v.prop_id AS PROP,
       v.view_id AS ID
FROM CUSTOMER C, CUSTOMER_CONTACT cc, VIEWING v
WHERE c.cust_id = v.cust_id
AND c.cust_id = cc.cust_id;

-- Viewing / Branch Join

SELECT b.branch_id AS B_ID, 
       SUBSTR(bc.branch_email, 0, 12) AS B_EMAIL, 
       SUBSTR(bc.branch_tel, 0, 12) AS B_TEL,
       v.prop_id AS PROP,
       v.view_id AS ID
FROM BRANCH b, BRANCH_CONTACT bc, VIEWING v
WHERE b.branch_id = v.branch_id
AND   b.branch_id = bc.branch_id;

-- Viewing / Property Join

SELECT p.prop_id AS P_ID, 
       SUBSTR(pa.prop_addr_l1, 0, 12) AS P_ADDR, 
       SUBSTR(l.loc_name, 0, 12) AS LOC_NAME,
       c.city_name AS CITY,
       v.view_id AS ID
FROM PROPERTIES p, PROP_ADDR pa, VIEWING v, CITY_LOCATION l, CITY c
WHERE p.prop_id = v.prop_id
AND   p.prop_id = pa.prop_id
AND   pa.loc_id = l.loc_id
AND   l.city_code = c.city_code;

-- Viewing / Comments Join 

SELECT v.view_id AS ID, 
       SUBSTR(com.comment_content, 0, 20) AS CONTENT, 
       SUBSTR(pa.prop_addr_l1, 0, 20) AS P_ADDR, 
       SUBSTR(v.view_date_time, 0, 15) AS VIEW_TIME, 
       com.comment_period AS PERIOD
FROM VIEWING v, COMMENTS com, PROP_ADDR pa
WHERE v.view_id = com.view_id
AND   v.prop_id = pa.prop_id;

----------------
--- Customers --
----------------



