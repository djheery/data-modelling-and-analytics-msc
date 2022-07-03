-- THINGS TO DO 
-- :: Add checks to the areas there are comments to add checks 
-- :: add room size to Prop_rooms table makes area derived 
-- :: Review all constraints 
-- :: Auto Assing Randomn ID
-- :: Add fake hashes for payroll details

CREATE TABLE COUNTIES (
  county_id CHAR(4),
  county_name VARCHAR(30) NOT NULL,
  CONSTRAINT COUNTY_PKEY PRIMARY KEY (county_id),
  CONSTRAINT COUNTY_NAME_UNIQ UNIQUE (county_name),
  CONSTRAINT COUNTY_ID_CHECK CHECK (REGEXP_LIKE (county_id, '^CO[0-9]{2}'))
);

CREATE TABLE TOWNS_AND_CITIES (
  tc_code VARCHAR(3),
  tc_name VARCHAR(20),
  county_id CHAR(4),
  CONSTRAINT TC_PKEY PRIMARY KEY (tc_code),
  CONSTRAINT TC_COUNTY FOREIGN KEY (county_id) REFERENCES COUNTIES
);

CREATE TABLE AREAS (
  area_id CHAR(5),
  tc_code VARCHAR(3),
  area_name VARCHAR(20),
  CONSTRAINT AREA_PKEY PRIMARY KEY (area_id),
  CONSTRAINT AREA_TC_REF FOREIGN KEY (tc_code) REFERENCES TOWNS_AND_CITIES,
  CONSTRAINT AREA_ID_CHECK CHECK (REGEXP_LIKE (area_id, '^AR[0-9]{3}'))
);


CREATE TABLE CUSTOMER (
  cust_id CHAR(5), 
  cust_fname VARCHAR(30) NOT NULL,
  cust_lname VARCHAR(30) NOT NULL,
  cust_gender char(1) NOT NULL, 
  cust_dob DATE NOT NULL,
  cust_email VARCHAR(40) NOT NULL,
  cust_tel VARCHAR(11) NOT NULL,
  cust_addr VARCHAR(100) NOT NULL,
  CONSTRAINT CUST_PKEY PRIMARY KEY (cust_id),
  CONSTRAINT CUST_GENDER_CHECK check(cust_gender IN ('M', 'F', 'O')),
  CONSTRAINT CUST_EMAIL_UNIQ UNIQUE (cust_email),
  CONSTRAINT CUST_ID_CHECK CHECK(REGEXP_LIKE(cust_id, '^C[0-9]{4}')),
  CONSTRAINT CUST_TEL_CHECK CHECK(REGEXP_LIKE(cust_tel, '^[0-9]{11}')),
  CONSTRAINT CUST_EMAIL_CHECK CHECK(cust_email LIKE '%@%.%' AND 
                                    cust_email NOT LIKE '@%' AND 
                                    cust_email NOT LIKE '%@%@%' AND 
                                    cust_email NOT LIKE '%.@%')
);

CREATE TABLE STAFF (
  staff_id CHAR(5),
  branch_id CHAR(5) NOT NULL,
  staff_fname VARCHAR(30) NOT NULL,
  staff_lname VARCHAR(30) NOT NULL,
  staff_email VARCHAR(40) NOT NULL,
  staff_tel VARCHAR(12) NOT NULL,
  staff_addr VARCHAR(100) NOT NULL,
  CONSTRAINT STAFF_PKEY PRIMARY KEY (staff_id),
  CONSTRAINT STAFF_EMAIL_UNIQ UNIQUE (staff_email),
  CONSTRAINT STAFF_ID_CHECK CHECK(REGEXP_LIKE(staff_id, '^S[0-9]{4}')),
  CONSTRAINT STAFF_TEL_CHECK CHECK(REGEXP_LIKE(staff_tel, '^[0-9]{11}')),
  CONSTRAINT STAFF_EMAIL_CHECK CHECK(staff_email LIKE '%@%.%' AND 
                                    staff_email NOT LIKE '@%' AND 
                                    staff_email NOT LIKE '%@%@%' AND 
                                    staff_email NOT LIKE '%.@%')
);

-- Add Hashes

CREATE TABLE PAYROLL_DETAILS (
  staff_id CHAR(5),
  staff_ni CHAR(9), 
  staff_sort_code CHAR(6) NOT NULL,
  staff_acc_no  CHAR(8) NOT NULL,
  CONSTRAINT STAFF_PAYROLL FOREIGN KEY (staff_id) REFERENCES STAFF,
  CONSTRAINT SP_PKEY_NI PRIMARY KEY (staff_ni),
  CONSTRAINT UNIQ_SC UNIQUE (staff_sort_code),
  CONSTRAINT UNIQ_ACNO UNIQUE (staff_acc_no)
);


-- Added Commission Update:
-- :: p2.q2
-- :: Insert 
CREATE TABLE BRANCH (
  branch_id CHAR(5),
  branch_manager CHAR(5),  
  ea_id CHAR(5) NOT NULL,
  branch_email VARCHAR(40) NOT NULL,
  branch_tel VARCHAR(12) NOT NULL,
  branch_addr VARCHAR(100) NOT NULL,
  com_amt NUMBER(3, 2),
  CONSTRAINT BRANCH_PKEY PRIMARY KEY (branch_id),
  CONSTRAINT BRANCH_MAN_REF FOREIGN KEY (branch_manager) REFERENCES STAFF (staff_id),
  CONSTRAINT MANAGER_UNIQ UNIQUE (branch_manager),
  CONSTRAINT BRANCH_EMAIL_UNIQ UNIQUE (branch_email),
  CONSTRAINT BRANCH_TEL_UNIQ UNIQUE (branch_tel),
  CONSTRAINT BRANCH_ID_CHECK CHECK(REGEXP_LIKE(branch_id, '^B[0-9]{4}')),
  CONSTRAINT BRANCH_TEL_CHECK CHECK(REGEXP_LIKE(branch_tel, '^[0-9]{11}')),
  CONSTRAINT COMMISION_CHECK CHECK (com_amt <= 0.25),
  CONSTRAINT BRANCH_EMAIL_CHECK CHECK(branch_email LIKE '%@%.%' AND 
                                     branch_email NOT LIKE '@%' AND 
                                     branch_email NOT LIKE '%@%@%' AND 
                                     branch_email NOT LIKE '%.@%')
);

CREATE TABLE PROPERTIES (
  prop_id CHAR(5),
  branch_id CHAR(5) NOT NULL,
  list_price NUMBER(7, 0),
  list_type VARCHAR(2) NOT NULL,
  prop_type VARCHAR(14) NOT NULL,
  list_date DATE NOT NULL,
  prop_desc VARCHAR(300),
  prop_area NUMBER(5, 0),
  CONSTRAINT PROP_PKEY PRIMARY KEY (prop_id),
  CONSTRAINT PROP_ID_CHECK CHECK(REGEXP_LIKE(prop_id, '^P[0-9]{4}')),
  CONSTRAINT PROP_BRANCH FOREIGN KEY (branch_id) REFERENCES BRANCH,
  CONSTRAINT LIST_TYPE_CHECK CHECK (list_type IN ('FS', 'S', 'FL', 'L')),
  CONSTRAINT PROP_TYPE_CHECK CHECK (prop_type IN ('Semi-Detached', 
                                                  'Detached',
                                                  'Flat',
                                                  'Terraced'))
);


CREATE TABLE PROP_ADDR (
  prop_id CHAR(5),
  addr_l1 VARCHAR(40) NOT NULL,
  addr_l2 VARCHAR(40),
  post_code VARCHAR(9) NOT NULL,
  area_id CHAR(5) NOT NULL,
  CONSTRAINT PROP_ADDR_PKEY FOREIGN KEY (prop_id) REFERENCES PROPERTIES,
  CONSTRAINT PROP_ID_UNIQ UNIQUE (prop_id),
  CONSTRAINT PADDR_TCA_REF FOREIGN KEY (area_id) REFERENCES AREAS
);


CREATE TABLE PROP_ROOMS (
  prop_id CHAR(5) NOT NULL,
  room_desc VARCHAR(400),
  room_type VARCHAR(40) NOT NULL,
  CONSTRAINT PR_PROP_REF FOREIGN KEY (prop_id) REFERENCES PROPERTIES,
  CONSTRAINT ROOM_TYPE_CHECK CHECK (room_type IN ('Kitchen', 'Bathroom', 'Bedroom', 'Living Room', 'Other', 'Garden'))
);

CREATE TABLE PROP_OWNER (
  prop_id CHAR(5),
  cust_id CHAR(5),
  branch_id CHAR(5),
  CONSTRAINT PO_PKEY PRIMARY KEY (prop_id, cust_id, branch_id),
  CONSTRAINT PO_CUST_REF FOREIGN KEY (cust_id) REFERENCES CUSTOMER (cust_id),
  CONSTRAINT PO_BRANCH_REF FOREIGN KEY (branch_id) REFERENCES BRANCH,
  CONSTRAINT PO_PROP_REF FOREIGN KEY (prop_id) REFERENCES PROPERTIES
);

CREATE TABLE SOLD_PROPERTIES (
  buyer CHAR(5) NOT NULL,
  prop_id CHAR(5) NOT NULL,
  sale_price NUMBER(9) NOT NULL, 
  sale_date DATE NOT NULL,
  CONSTRAINT SP_PKEY PRIMARY KEY (buyer, prop_id),
  CONSTRAINT SP_BUYER_REF FOREIGN KEY (buyer) REFERENCES CUSTOMER,
  CONSTRAINT SP_PROP_REF FOREIGN KEY (prop_id) REFERENCES PROPERTIES
);

CREATE TABLE DPS (
  dps_id CHAR(5),
  dps_name VARCHAR(30),
  dps_email VARCHAR(40),
  CONSTRAINT DPS_PKEY PRIMARY KEY (dps_id),
  CONSTRAINT DPS_NAME_UNIQ UNIQUE (dps_name),
  CONSTRAINT DPS_EMAIL_UNIQ UNIQUE (dps_email),
  CONSTRAINT DPS_ID_CHECK CHECK(REGEXP_LIKE(dps_id, '^DPS[0-9]{2}'))
);

CREATE TABLE RENTED_PROPERTIES (
  tennant_id CHAR(5) NOT NULL, 
  prop_id CHAR(5) NOT NULL,
  rent_amt NUMBER(5) NOT NULL,
  t_start_date DATE NOT NULL, 
  t_end_date DATE NOT NULL, 
  dps_id CHAR(5) NOT NULL,
  CONSTRAINT TENNANT_PKEY PRIMARY KEY (tennant_id, prop_id),
  CONSTRAINT T_ID_CUST_REF FOREIGN KEY (tennant_id) REFERENCES CUSTOMER,
  CONSTRAINT PROP_TENNANT FOREIGN KEY (prop_id) REFERENCES PROPERTIES,
  CONSTRAINT DPS_TENNANT FOREIGN KEY (dps_id) REFERENCES DPS,
  CONSTRAINT TENNANCY_START_END CHECK(t_end_date > t_start_date)
);

CREATE TABLE VIEWING (
  view_id CHAR(5),
  prop_id CHAR(5) NOT NULL,
  branch_id CHAR(5) NOT NULL,
  cust_id CHAR(5) NOT NULL,
  view_date_time TIMESTAMP NOT NULL, 
  CONSTRAINT V_PKEY PRIMARY KEY (view_id),
  CONSTRAINT VIEW_BRANCH_REF FOREIGN KEY (branch_id) REFERENCES BRANCH,
  CONSTRAINT VIEW_CUST FOREIGN KEY (cust_id) REFERENCES CUSTOMER,
  CONSTRAINT VIEW_ID_CHECK CHECK(REGEXP_LIKE(view_id, '^V[0-9]{4}'))
);

CREATE TABLE VIEWING_COMMENTS (
  view_id CHAR(5),
  comment_content VARCHAR(500) NOT NULL,
  comment_period VARCHAR(6) NOT NULL,
  CONSTRAINT VIEW_COMMENT_REF FOREIGN KEY (view_id) REFERENCES VIEWING,
  CONSTRAINT COMMENT_PERIOD_CHECK CHECK (comment_period IN ('Before', 'After', 'During'))
);

CREATE TABLE ESTATE_AGENT (
  ea_id CHAR(5),
  headquaters CHAR(5) NOT NULL,
  ea_website VARCHAR(50) NOT NULL,
  ea_name VARCHAR(50) NOT NULL,
  CONSTRAINT EA_PKEY PRIMARY KEY (ea_id),
  CONSTRAINT EA_HQ FOREIGN KEY (headquaters) REFERENCES BRANCH,
  CONSTRAINT WEB_UNIQ UNIQUE (ea_website),
  CONSTRAINT EA_ID_CHECK CHECK(REGEXP_LIKE(ea_id, '^EA[0-9]{3}'))
);

COMMIT;
/

-- Alter the tables after the data hase been inserted  

-- ALTER TABLE BRANCH
--   ADD CONSTRAINT BRANCH_EA_REF
--     FOREIGN KEY (earea_id) REFERENCES ESTATE_AGENT;

-- ALTER TABLE STAFF 
--   ADD CONSTRAINT STAFF_BRANCH_REF
--     FOREIGN KEY (branch_id) REFERENCES BRANCH;

-- COMMIT;

-- Example Auto increment with property id's

