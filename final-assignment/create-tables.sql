-- THINGS TO DO 
-- :: Addresses --- Should I break them up into tables? 
-- :: Add checks to the areas there are comments to add checks 
-- :: Should Commission be a derrived Attribute
-- :: Should deposit be a derrived attribute?
-- :: add room size to Prop_rooms table 
-- :: Review all constraints 
-- :: rework ERD and map
-- :: Auto Assing Randomn ID
-- :: Add Commit Statements
-- :: Consider adding usernames and passwords for staff
-- :: Add fake hashes for payroll details
-- :: Add Description, area to Property
-- :: rewrite the spelling of detached
-- :: concat / to_char for auto assign
-- :: Split full name into first and last

CREATE TABLE COUNTIES (
  county_id CHAR(4),
  county_name VARCHAR(30) NOT NULL,
  CONSTRAINT COUNTY_PKEY PRIMARY KEY (county_id),
  CONSTRAINT COUNTY_NAME_UNIQ UNIQUE (county_name)
);

CREATE TABLE TOWNS_AND_CITIES (
  tc_code VARCHAR(3),
  tc_name VARCHAR(20),
  county_id CHAR(4),
  CONSTRAINT CITY_PKEY PRIMARY KEY (tc_code),
  CONSTRAINT CITIES_COUNTY FOREIGN KEY (county_id) REFERENCES COUNTIES
);

CREATE TABLE TOWN_CITY_LOCATION (
  loc_id CHAR(6),
  tc_code VARCHAR(3),
  loc_name VARCHAR(20),
  CONSTRAINT LOC_PKEY PRIMARY KEY (loc_id),
  CONSTRAINT LOC_TC FOREIGN KEY (tc_code) REFERENCES CITY
);

CREATE TABLE ADDRESSES (
  addr_id CHAR(5) NOT NULL,
  addr_l1 VARCHAR(40) NOT NULL,
  addr_l2 VARCHAR(40),
  post_code VARCHAR(9) NOT NULL,
  loc_id CHAR(6) NOT NULL,
  CONSTRAINT ADDRESSES_PKEY PRIMARY KEY (addr_id),
  CONSTRAINT ADDR_LOC_REF FOREIGN KEY (loc_id) REFERENCES CITY_LOCATION;
)

CREATE TABLE CUSTOMER (
  cust_id CHAR(5), 
  cust_fname VARCHAR(30) NOT NULL,
  cust_lname VARCHAR(30) NOT NULL,
  cust_gender char(1) NOT NULL, 
  cust_dob DATE NOT NULL,
  cust_email VARCHAR(40) NOT NULL,
  cust_tel VARCHAR(12) NOT NULL,
  cust_addr CHAR(5) NOT NULL,
  CONSTRAINT CUST_PKEY PRIMARY KEY (cust_id),
  CONSTRAINT CUST_GENDER_CHECK check(cust_gender IN ('M', 'F', 'O')),
  CONSTRAINT CUST_EMAIL_UNIQ UNIQUE (cust_email),
  CONSTRAINT CUST_ADDR_REF FOREIGN KEY (cust_addr) REFERENCES ADDRESSES;
);

-- CREATE TABLE CUSTOMER_ADDR (
--   cust_id CHAR(5) NOT NULL,
--   cust_addr_l1 VARCHAR (40) NOT NULL,
--   cust_addr_l2 VARCHAR (40),
--   cust_post_code VARCHAR(9) NOT NULL,
--   cust_city_code VARCHAR(3) NOT NULL, -- ref city code
--   CONSTRAINT CUST_ADDR_REF FOREIGN KEY (cust_id) REFERENCES CUSTOMER,
--   CONSTRAINT CUST_ADDR_PKEY PRIMARY KEY (cust_id)
-- );

CREATE TABLE STAFF (
  staff_id CHAR(6),
  branch_id CHAR(5) NOT NULL,
  staff_fname VARCHAR(30) NOT NULL,
  staff_lname VARCHAR(30) NOT NULL,
  staff_email VARCHAR(40) NOT NULL,
  staff_tel VARCHAR(12) NOT NULL,
  staff_addr CHAR(5) NOT NULL,
  CONSTRAINT STAFF_PKEY PRIMARY KEY (staff_id),
  CONSTRAINT STAFF_EMAIL_UNIQ UNIQUE (staff_email),
  CONSTRAINT STAFF_TEL_UNIQ UNIQUE (staff_tel),
  CONSTRAINT STAFF_ADDR_REF FOREIGN KEY (staff_addr) REFERENCES ADDRESSES;
);

-- CREATE TABLE STAFF_ADDR (
--   staff_id CHAR(6) NOT NULL,
--   staff_addr_l1 VARCHAR (40) NOT NULL,
--   staff_addr_l2 VARCHAR (40),
--   staff_post_code VARCHAR(9) NOT NULL,
--   staff_city_code VARCHAR(3) NOT NULL,
--   CONSTRAINT STAFF_ADDR_PKEY PRIMARY KEY (staff_id),
--   CONSTRAINT STAFF_ADDR_REF FOREIGN KEY (staff_id) REFERENCES STAFF
-- );

CREATE TABLE BRANCH (
  branch_id CHAR(5),
  branch_manager CHAR(6),  
  ea_id CHAR(5) NOT NULL,
  branch_email VARCHAR(40) NOT NULL,
  branch_tel VARCHAR(12) NOT NULL,
  branch_addr CHAR(5) NOT NULL,
  CONSTRAINT BRANCH_PKEY PRIMARY KEY (branch_id),
  CONSTRAINT BRANCH_MANAGER_REF FOREIGN KEY (branch_manager) REFERENCES STAFF (staff_id),
  CONSTRAINT BRANCH_ADDR_REF FOREIGN KEY (branch_addr) REFERENCES ADDRESSES
  CONSTRAINT MANAGER_UNIQ UNIQUE (branch_manager),
  CONSTRAINT BRANCH_EMAIL_UNIQ UNIQUE (branch_email),
  CONSTRAINT BRANCH_TEL_UNIQ UNIQUE (branch_tel),
);

-- CREATE TABLE BRANCH_ADDR (
--   branch_id CHAR(5) NOT NULL,
--   branch_addr_l1 VARCHAR (40) NOT NULL,
--   branch_addr_l2 VARCHAR (40),
--   branch_post_code VARCHAR(9) NOT NULL,
--   branch_city_code VARCHAR(3) NOT NULL,
--   CONSTRAINT BRANCH_ADDR_REF FOREIGN KEY (branch_id) REFERENCES BRANCH,
--   CONSTRAINT BRANCH_ADDRL1_UNIQ UNIQUE (branch_addr_l1)
-- );

CREATE TABLE PAYROLL_DETAILS (
  staff_id CHAR(6),
  staff_ni CHAR(9), -- Add check 
  staff_sort_code CHAR(6) NOT NULL, -- add check
  staff_acc_no  CHAR(8) NOT NULL, -- add check
  CONSTRAINT STAFF_PAYROLL FOREIGN KEY (staff_id) REFERENCES STAFF,
  CONSTRAINT UNIQ_NI UNIQUE (staff_ni),
  CONSTRAINT UNIQ_SC UNIQUE (staff_sort_code),
  CONSTRAINT UNIQ_ACNO UNIQUE (staff_acc_no)
);

CREATE TABLE PROP_OWNER (
  cust_id CHAR(5),
  branch_id CHAR(5),
  CONSTRAINT PO_PKEY PRIMARY KEY (cust_id, branch_id),
  CONSTRAINT PO_CUST_REF FOREIGN KEY (cust_id) REFERENCES CUSTOMER,
  CONSTRAINT PO_BRANCH_REF FOREIGN KEY (branch_id) REFERENCES BRANCH
);

CREATE TABLE PROPERTIES (
  prop_id CHAR(5),
  branch_id CHAR(5) NOT NULL,
  prop_owner CHAR(5) NOT NULL,
  list_price NUMBER(7, 0),
  list_type VARCHAR(2) NOT NULL,
  prop_type VARCHAR(14) NOT NULL,
  list_date DATE NOT NULL,
  prop_desc VARCHAR(300),
  prop_area NUMBER(5, 0),
  prop_addr CHAR(5) NOT NULL,
  CONSTRAINT PROP_PKEY PRIMARY KEY (prop_id),
  CONSTRAINT PROP_BRANCH FOREIGN KEY (branch_id) REFERENCES BRANCH,
  CONSTRAINT PROP_OWNER_REF FOREIGN KEY (prop_owner, branch_id) REFERENCES PROP_OWNER,
  CONSTRAINT PROP_ADDR_REF FOREIGN KEY (prop_addr) REFERENCES ADDRESSES,
  CONSTRAINT LIST_TYPE_CHECK CHECK (list_type IN ('FS', 'S', 'FL', 'L')),
  CONSTRAINT PROP_TYPE_CHECK CHECK (prop_type IN ('Flat', 
                                                  'Detached', 
                                                  'Semi-Detached', 
                                                  'Terraced'))
);

-- CREATE TABLE PROP_ADDR (
--   prop_id CHAR(5) NOT NULL,
--   prop_addr_l1 VARCHAR (40) NOT NULL,
--   prop_addr_l2 VARCHAR (40),
--   prop_post_code VARCHAR(9) NOT NULL,
--   loc_id CHAR(6) NOT NULL,
--   CONSTRAINT PROP_ADDR_ID_REF FOREIGN KEY (prop_id) REFERENCES PROPERTIES,
--   CONSTRAINT PROP_LOCATION_REF FOREIGN KEY (loc_id) REFERENCES CITY_LOCATION,
--   CONSTRAINT PROP_ID_UNIQ UNIQUE (prop_id),
--   CONSTRAINT PROP_ADDRL1_UNIQ UNIQUE (prop_addr_l1)
-- );

CREATE TABLE PROP_ROOMS (
  prop_id CHAR(5) NOT NULL,
  room_desc VARCHAR(400),
  room_type VARCHAR(40) NOT NULL,
  CONSTRAINT PR_PROP_REF FOREIGN KEY (prop_id) REFERENCES PROPERTIES,
  CONSTRAINT ROOM_TYPE_CHECK CHECK (room_type IN ('Kitchen', 'Bathroom', 'Bedroom', 'Living Room', 'Other'))
);

-- Commision is Derived 
-- Stamp Duty is derivdd 

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
  dps_id char(5),
  dps_name VARCHAR(30),
  dps_email VARCHAR(40),
  CONSTRAINT DPS_PKEY PRIMARY KEY (dps_id),
  CONSTRAINT DPS_NAME_UNIQ UNIQUE (dps_name),
  CONSTRAINT DPS_EMAIL_UNIQ UNIQUE (dps_email)
);

-- Deposit amount derived
-- Commission Derived
-- Add M:N to ERD
-- Check Date constraint is valid 
CREATE TABLE RENTED_PROPERTIES (
  cust_id CHAR(5) NOT NULL, 
  prop_id CHAR(5) NOT NULL,
  rent_amt NUMBER(5) NOT NULL,
  t_start_date DATE NOT NULL, -- Date Constraint
  t_end_date DATE NOT NULL, -- Date Constraint
  dps_id CHAR(5) NOT NULL,
  CONSTRAINT RP_PKEY PRIMARY KEY (cust_id, prop_id),
  CONSTRAINT RP_CUST_REF FOREIGN KEY (cust_id) REFERENCES CUSTOMER,
  CONSTRAINT RP_PROP_REF FOREIGN KEY (prop_id) REFERENCES PROPERTIES,
  CONSTRAINT RP_DPS_REF FOREIGN KEY (dps_id) REFERENCES DPS,
  CONSTRAINT TENNANCY_START_END CHECK(t_end_date > t_start_date)
);

-- Removed the Property Owner ID Because it can be found via prop

CREATE TABLE VIEWING (
  view_id CHAR(5),
  prop_id CHAR(5) NOT NULL,
  branch_id CHAR(5) NOT NULL,
  cust_id CHAR(5) NOT NULL,
  view_date_time TIMESTAMP NOT NULL, 
  CONSTRAINT V_PKEY PRIMARY KEY (view_id),
  CONSTRAINT VIEW_PROP FOREIGN KEY (prop_id) REFERENCES PROPERTIES,
  CONSTRAINT VIEW_BRANCH_REF FOREIGN KEY (branch_id) REFERENCES BRANCH,
  CONSTRAINT VIEW_CUST FOREIGN KEY (cust_id) REFERENCES CUSTOMER
);

CREATE TABLE VIEWING_COMMENTS (
  view_id CHAR(5),
  comment_content VARCHAR(500) NOT NULL,
  comment_period VARCHAR(6) NOT NULL,
  CONSTRAINT VIEW_COMMENT_REF FOREIGN KEY (view_id) REFERENCES VIEWING,
  CONSTRAINT COMMENT_PERIOD_CHECK CHECK (comment_period IN ('Before', 'After', 'During'))
);

CREATE TABLE ESTATE_AGENT (
  ea_id CHAR(6),
  headquaters CHAR(5) NOT NULL,
  ea_website VARCHAR(50) NOT NULL,
  ea_name VARCHAR(50) NOT NULL,
  CONSTRAINT EA_PKEY PRIMARY KEY (ea_id),
  CONSTRAINT EA_HQ FOREIGN KEY (headquaters) REFERENCES BRANCH,
  CONSTRAINT WEB_UNIQ UNIQUE (website)
);

COMMIT;

ALTER TABLE BRANCH
  ADD CONSTRAINT BRANCH_EA_REF
    FOREIGN KEY (ea_id) REFERENCES ESTATE_AGENT;

ALTER TABLE STAFF 
  ADD CONSTRAINT STAFF_BRANCH_REF
    FOREIGN KEY (branch_id) REFERENCES BRANCH;

COMMIT;

-- Example Auto increment with property id's

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