SET ECHO ON 
SET VERIFY ON 

DROP TYPE cust_type FORCE;
DROP TYPE cust_ref_type FORCE;
DROP TYPE cust_ref_table FORCE;
DROP TYPE addr_type FORCE; 
DROP TYPE addr_tab FORCE;
DROP TYPE prop_rooms_type FORCE;
DROP TYPE prop_rooms_tab FORCE; 
DROP TYPE prop_type FORCE;
DROP TYPE sold_prop_ref_type FORCE;  
DROP TYPE sold_prop_ref_table FORCE; 
DROP TABLE prop_table CASCADE CONSTRAINTS PURGE; 
DROP TABLE cust_table CASCADE CONSTRAINTS PURGE; 

CREATE OR REPLACE TYPE cust_type
/

CREATE OR REPLACE TYPE cust_ref_type AS OBJECT (
  cust_ref REF cust_type 
)
/

CREATE OR REPLACE TYPE cust_ref_table AS TABLE OF cust_ref_type
/

CREATE OR REPLACE TYPE addr_type AS OBJECT (
  addr_l1 VARCHAR(20), 
  addr_l2 VARCHAR(20),
  post_code VARCHAR(8),
  loc_name VARCHAR(15), 
  city_code CHAR(3)
)
/

CREATE OR REPLACE TYPE addr_tab AS TABLE OF addr_type 
/

CREATE OR REPLACE TYPE prop_rooms_type AS OBJECT (
  room_desc VARCHAR (300),
  room_type VARCHAR(14)
)
/

CREATE OR REPLACE TYPE prop_rooms_tab AS TABLE OF prop_rooms_type
/ 

CREATE OR REPLACE TYPE prop_type AS OBJECT (
  prop_id CHAR(3), 
  prop_desc VARCHAR(100),
  prop_area NUMBER(7, 0),
  prop_type VARCHAR(14),
  list_date DATE,
  list_price NUMBER(7, 0),
  list_type CHAR(2),
  prop_addr_tab addr_type, 
  prop_rooms prop_rooms_tab, 
  prop_owners cust_ref_table 
)
/

CREATE OR REPLACE TYPE sold_prop_ref_type AS OBJECT (
  prop_ref REF prop_type 
)
/

CREATE OR REPLACE TYPE sold_prop_ref_table AS TABLE of sold_prop_ref_type 
/ 

CREATE OR REPLACE TYPE cust_type AS OBJECT (
  cust_id CHAR(3),
  cust_fname VARCHAR(20),
  cust_lname VARCHAR(20),
  cust_email VARCHAR(30),
  cust_tel VARCHAR(14),
  cust_dob DATE,
  cust_gender CHAR(1),
  cust_addr addr_type,
  props_owned sold_prop_ref_table
)
/


CREATE TABLE prop_table OF prop_type (PRIMARY KEY (prop_id))
  NESTED TABLE prop_rooms STORE AS PROP_ROOMS_REFS
  NESTED TABLE prop_owners STORE AS PROP_OWNER_REFS 
/

CREATE TABLE cust_table OF cust_type (PRIMARY KEY (cust_id))
  NESTED TABLE props_owned STORE AS CUST_PROPS
/

INSERT INTO cust_table 
  VALUES ( 
    'C01', 'Daniel', 'Heery', 'heery@live.co.uk', 
    '07437519714', '06-APR-1994', 'M',
    addr_type ('48 Wolseley Gardens', NULL, 'NE2 1HR', 'Jesmond', 'NE'),
    sold_prop_ref_table()
  );
INSERT INTO cust_table 
  VALUES (
    'C02',
    'Elizabeth', 'Jones', 'ejones@live.co.uk',
    '07437555714', '16-DEC-1995', 'F',
    addr_type ('54 Heaton Mount', NULL, 'NE3 2PJ', 'Heaton', 'NE'),
    sold_prop_ref_table()
  );

INSERT INTO cust_table 
  VALUES (
    'C03',
    'Steven', 'Gerrard', 'sgerrard@live.co.uk',
    '07437555714', '30-MAY-1980', 'M',
    addr_type ('30 Gordon Terrace', NULL, 'LS6 4HX', 'Meanwood', 'LS'),
    sold_prop_ref_table()
  );

INSERT INTO cust_table 
  VALUES (
    'C04',
    'Gretchen', 'Parlato', 'gparlato@live.co.uk',
    '07437555714', '11-FEB-1976', 'F',
    addr_type('48 Knowle Road', NULL, 'LS4 2PJ', 'Burley', 'LS'),
    sold_prop_ref_table()
  );
INSERT INTO cust_table 
  VALUES (
    'C05',
    'Avashi', 'Cohen', 'acohen@live.co.uk',
    '07437555714', '16-DEC-1995', 'F',
    addr_type('21 Sunderland Road', 'Flat 3', 'NE34 2SH', 'Gateshead', 'NE'),
    sold_prop_ref_table()
  );

INSERT INTO prop_table 
  VALUES (
    'P01', 'A large property with amazing views', 3000,
    'Detached', '10-MAR-2021', 175000, 'FS',
    addr_type('23 Osbourne ', NULL, 'NE3 1PR', 'Jesmond', 'NE'),
    prop_rooms_tab(
      prop_rooms_type('Light and Airy Kitchen', 'Kitchen'),
      prop_rooms_type('Large Bedroom with desk', 'Bedroom'),
      prop_rooms_type('Large Bedroom with desk', 'Bedroom'),
      prop_rooms_type('Medium Bedroom with desk', 'Bedroom'),
      prop_rooms_type('Medium bathroom with Modern Furnishings', 'Bathroom')
    ),
    cust_ref_table()
  );
INSERT INTO prop_table
  VALUES (
    'P02', 'A very nice flat with modern furnishings', 2000,
    'Semi-Detached', '10-MAR-2021', 1200, 'FL',
    addr_type('15 Knowle Road', 'Flat A', 'LS4 2PJ', 'Burley', 'LS'),
    prop_rooms_tab(
      prop_rooms_type('A nice bathroom', 'Bathroom'),
      prop_rooms_type('A large bedroom with modern furnishings', 'Bedroom'),
      prop_rooms_type('A medium size bedroom with modern furnishings', 'Bedroom'),
      prop_rooms_type('A medium size kitchen', 'Kitchen')
    ),
    cust_ref_table() 
  );
INSERT INTO prop_table
  VALUES (
    'P03', 'A very nice flat with modern furnishings', 2000,
    'Semi-Detached', '10-MAR-2021', 1200, 'FL',
    addr_type('15 Knowle Road', 'Flat A', 'LS4 2PJ', 'Burley', 'LS'),
    prop_rooms_tab(
      prop_rooms_type('A nice bathroom', 'Bathroom'),
      prop_rooms_type('A large bedroom with modern furnishings', 'Bedroom'),
      prop_rooms_type('A medium size bedroom with modern furnishings', 'Bedroom'),
      prop_rooms_type('A medium size kitchen', 'Kitchen')
    ),
    cust_ref_table() 
  );
INSERT INTO prop_table 
  VALUES (
    'P04', 'A very nice property with nice views', 3000,
    'Semi-Detached', '10-MAR-2021', 850, 'FS',
    addr_type('23 Osbourne Road', NULL, 'NE3 1PR', 'Jesmond', 'NE'),
    prop_rooms_tab(
      prop_rooms_type('Light and Airy Kitchen','Kitchen'),
      prop_rooms_type('Large Bedroom with desk', 'Bedroom'),
      prop_rooms_type('Medium Bedroom with desk', 'Bedroom'),
      prop_rooms_type('Medium bathroom with Modern Furnishings', 'Bathroom')
    ),
    cust_ref_table() 
  );

REM Insert Property Refs

INSERT INTO TABLE (
    SELECT  c.props_owned
    FROM   cust_table c 
    WHERE  c.cust_id = 'C01')
  SELECT REF(p)
         FROM prop_table p
         WHERE p.prop_id in ('P01', 'P02')
/
INSERT INTO TABLE (
    SELECT  c.props_owned
    FROM   cust_table c 
    WHERE  c.cust_id = 'C02')
  SELECT REF(p)
         FROM prop_table p
         WHERE p.prop_id in ('P01', 'P04')
/
INSERT INTO TABLE (
    SELECT  c.props_owned
    FROM   cust_table c 
    WHERE  c.cust_id = 'C03')
  SELECT REF(p)
         FROM prop_table p
         WHERE p.prop_id in ('P03')
/
INSERT INTO TABLE (
    SELECT  c.props_owned
    FROM   cust_table c 
    WHERE  c.cust_id = 'C04')
  SELECT REF(p)
         FROM prop_table p
         WHERE p.prop_id in ('P02')
/

REM Insert Property Owner Refs into prop_table 

INSERT INTO TABLE (
    SELECT  p.prop_owners
    FROM   prop_table p 
    WHERE  p.prop_id = 'P01')
  SELECT REF(p)
         FROM prop_table p
         WHERE p.prop_id in ('C01', 'C02');
/

INSERT INTO TABLE (
    SELECT  p.prop_owners
    FROM   prop_table p 
    WHERE  p.prop_id = 'P02')
  SELECT REF(p)
         FROM prop_table p
         WHERE p.prop_id in ('C01', 'C04');
/

INSERT INTO TABLE (
    SELECT  p.prop_owners
    FROM   prop_table p 
    WHERE  p.prop_id = 'P03')
  SELECT REF(p)
         FROM prop_table p
         WHERE p.prop_id in ('C03');
/

INSERT INTO TABLE (
    SELECT  p.prop_owners
    FROM   prop_table p 
    WHERE  p.prop_id = 'P04')
  SELECT REF(p)
         FROM prop_table p
         WHERE p.prop_id in ('C02');
/
-- Test Query for customers tabble 

SELECT c.cust_fname "First Name", c.cust_lname "Last Name",
       c.cust_addr.addr_l1, c.cust_addr.post_code
       FROM cust_table c;

-- Test Query for Properties 

SELECT p.prop_addr_tab.post_code "Property Address", p.prop_addr_tab.loc_name "Prop",
       p.prop_area "Area", COUNT(pr.room_type) as room_count
       FROM prop_table p, TABLE(p.prop_rooms) pr
       WHERE pr.room_type = 'Bedroom'
       GROUP BY p.prop_addr_tab.post_code, p.prop_area, p.prop_addr_tab.loc_name
       ORDER BY COUNT(pr.room_type) DESC;

-- Test Query for Joins 

SELECT p.prop_addr_tab.post_code "Property Address", p.prop_addr_tab.loc_name "Prop",
       