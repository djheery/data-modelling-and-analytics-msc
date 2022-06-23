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