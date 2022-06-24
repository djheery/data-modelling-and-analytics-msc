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