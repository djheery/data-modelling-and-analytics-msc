-- THINGS TO DO 
-- :: Addresses --- Should I break them up into tables? 
-- :: Add checks to the areas there are comments to add checks 
-- :: Decide on char length for IDs
-- :: Should Commission be a derrived Attribute
-- :: Add constraints to Properties
-- :: Add TennantID to the Tennant table
-- :: Should deposit be a derrived attribute?
-- :: add room size to Prop_rooms table 
-- :: Review all constraints 
-- :: Does the viewing table need branch, or property owner (could these be found via the property)
-- :: Add estate agents to branches
-- :: rework ERD and map
-- :: Auto Assing Randomn ID

CREATE TABLE COUNTIES (
  county_id CHAR(4),
  county_name VARCHAR(30) NOT NULL,
  CONSTRAINT COUNTY_PKEY PRIMARY KEY (county_id),
  CONSTRAINT COUNTY_NAME_UNIQ UNIQUE (county_name)
);

CREATE TABLE CITY (
  city_code CHAR(2),
  city_name VARCHAR(20),
  county_id CHAR(4),
  CONSTRAINT CITY_PKEY PRIMARY KEY (city_code),
  CONSTRAINT CITIES_COUNTY FOREIGN KEY (county_id) REFERENCES COUNTIES
);

CREATE TABLE CITY_LOCATION (
  loc_id CHAR(6),
  city_code CHAR(2),
  loc_name VARCHAR(20),
  CONSTRAINT LOC_PKEY PRIMARY KEY (loc_id),
  CONSTRAINT LOC_CITY FOREIGN KEY (city_code) REFERENCES CITY
);

CREATE TABLE CUSTOMER (
  cust_id CHAR(5), 
  cust_full_name VARCHAR(30) NOT NULL,
  cust_gender char(1) NOT NULL, 
  cust_dob DATE NOT NULL,
  CONSTRAINT CUST_PKEY PRIMARY KEY (cust_id),
  CONSTRAINT CUST_GENDER_CHECK check(cust_gender IN ('M', 'F', 'O'))
);

CREATE TABLE CUSTOMER_ADDR (
  cust_id CHAR(5) NOT NULL,
  cust_addr_l1 VARCHAR (40) NOT NULL,
  cust_addr_l2 VARCHAR (40),
  cust_post_code VARCHAR(9) NOT NULL,
  cust_city_code CHAR(2) NOT NULL, -- ref city code
  CONSTRAINT CUST_ADDR_REF FOREIGN KEY (cust_id) REFERENCES CUSTOMER,
  CONSTRAINT CUST_ADDR_PKEY PRIMARY KEY (cust_id)
);

CREATE TABLE CUSTOMER_CONTACT (
  cust_id CHAR(5),
  cust_email VARCHAR(40),
  cust_primary_tel VARCHAR(12),
  cust_other_tel VARCHAR(12),
  CONSTRAINT CUST_CONTACT FOREIGN KEY (cust_id) REFERENCES CUSTOMER,
  CONSTRAINT CUST_CONTACT_UNIQUE UNIQUE (cust_id),
  CONSTRAINT CUST_EMAIL_UNIQ UNIQUE (cust_email),
  CONSTRAINT CUST_TEL_UNIQ UNIQUE (cust_primary_tel)
);


CREATE TABLE STAFF (
  staff_id CHAR(6),
  branch_id CHAR(5) NOT NULL,
  s_full_name VARCHAR(30) NOT NULL,
  CONSTRAINT STAFF_PKEY PRIMARY KEY (staff_id)
);

CREATE TABLE STAFF_ADDR (
  staff_id CHAR(6) NOT NULL,
  staff_addr_l1 VARCHAR (40) NOT NULL,
  staff_addr_l2 VARCHAR (40),
  staff_post_code VARCHAR(9) NOT NULL,
  staff_city_code CHAR(2) NOT NULL,
  CONSTRAINT STAFF_ADDR_REF FOREIGN KEY (staff_id) REFERENCES STAFF
);

CREATE TABLE STAFF_CONTACT (
  staff_id CHAR(6),
  staff_email VARCHAR(40),
  staff_primary_tel VARCHAR(12),
  CONSTRAINT STAFF_CONTACT_DETAILS FOREIGN KEY (staff_id) REFERENCES STAFF,
  CONSTRAINT STAFF_EMAIL_UNIQ UNIQUE (staff_email),
  CONSTRAINT STAFF_TEL_UNIQ UNIQUE (staff_primary_tel)
);

CREATE TABLE BRANCH (
  branch_id CHAR(5),
  branch_manager CHAR(6),  
  ea_id CHAR(5) NOT NULL,
  CONSTRAINT BRANCH_PKEY PRIMARY KEY (branch_id),
  CONSTRAINT BRANCH_MANAGER_REF 
    FOREIGN KEY (branch_manager) REFERENCES STAFF (staff_id),
  CONSTRAINT MANAGER_UNIQ UNIQUE (branch_manager)
);

CREATE TABLE BRANCH_CONTACT (
  branch_id CHAR(5) NOT NULL,
  branch_email VARCHAR(40) NOT NULL,
  branch_tel VARCHAR(12) NOT NULL,
  CONSTRAINT BRANCH_ID_REF FOREIGN KEY (branch_id) REFERENCES BRANCH,
  CONSTRAINT BRANCH_EMAIL_UNIQ UNIQUE (branch_email),
  CONSTRAINT BRANCH_TEL_UNIQ UNIQUE (branch_tel)
);

CREATE TABLE BRANCH_ADDR (
  branch_id CHAR(5) NOT NULL,
  branch_addr_l1 VARCHAR (40) NOT NULL,
  branch_addr_l2 VARCHAR (40),
  branch_post_code VARCHAR(9) NOT NULL,
  branch_city_code CHAR(2) NOT NULL,
  CONSTRAINT BRANCH_ADDR_REF FOREIGN KEY (branch_id) REFERENCES BRANCH,
  CONSTRAINT BRANCH_ADDRL1_UNIQ UNIQUE (branch_addr_l1)
);



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
  po_id CHAR(5),
  cust_id CHAR(5),
  branch_id CHAR(5),
  CONSTRAINT PO_PKEY PRIMARY KEY (po_id),
  CONSTRAINT PO_CUST_REF FOREIGN KEY (cust_id) REFERENCES CUSTOMER,
  CONSTRAINT PO_BRANCH_REF FOREIGN KEY (branch_id) REFERENCES BRANCH
);

CREATE TABLE PROPERTIES (
  prop_id CHAR(5),
  branch_id CHAR(5) NOT NULL,
  po_id CHAR(5) NOT NULL,
  list_price NUMBER(7, 0),
  list_type VARCHAR(2) NOT NULL,
  list_date DATE NOT NULL,
  CONSTRAINT PROP_PKEY PRIMARY KEY (prop_id),
  CONSTRAINT PROP_BRANCH FOREIGN KEY (branch_id) REFERENCES BRANCH,
  CONSTRAINT PROP_OWNER_ATTACH FOREIGN KEY (po_id) REFERENCES PROP_OWNER;
  CONSTRAINT LIST_TYPE_CHECK CHECK (list_type IN ('FS', 'S', 'FL', 'L')),
  CONSTRAINT PROP_TYPE_CHECK CHECK (prop_type IN ('Flat', 
                                                  'Detatched', 
                                                  'Semi-Detatched', 
                                                  'Terraced'))
);

CREATE TABLE PROP_ADDR (
  prop_id CHAR(2) NOT NULL,
  prop_addr_l1 VARCHAR (40) NOT NULL,
  prop_addr_l2 VARCHAR (40),
  prop_post_code VARCHAR(9) NOT NULL,
  prop_loc_id CHAR(5) NOT NULL
  CONSTRAINT PROP_ADDR_ID_REF FOREIGN KEY (prop_id) REFERENCES PROPERTIES,
  CONSTRAINT PROP_ID_UNIQ UNIQUE (prop_id),
  CONSTRAINT PROP_ADDRL1_UNIQ UNIQUE (prop_addr_l1),
  CONSTRAINT PROP_ADDRL2_UNIQ UNIQUE (prop_addr_l2),
);

CREATE TABLE PROP_ROOMS (
  prop_id CHAR(5),
  room_desc VARCHAR(400),
  room_type VARCHAR(40) CHECK (room_type IN ('Kitchen', 'Bathroom', 'Bedroom', 'Living Room', 'Other')),
  CONSTRAINT PR_PKEY PRIMARY KEY (prop_id)
);

CREATE TABLE SOLD_PROPERTIES (
  buyer CHAR(5),
  prop_id CHAR(5),
  sold_price NUMBER(9),
  commission NUMBER(4), -- Derived?
  stamp_duty NUMBER(5), -- Derived? 
  CONSTRAINT SP_PKEY PRIMARY KEY (buyer, prop_id)
);

CREATE TABLE DPS (
  dps_id char(3),
  dps_name VARCHAR(20),
  dps_email VARCHAR(40),
  CONSTRAINT DPS_PKEY PRIMARY KEY (dps_id)
);

CREATE TABLE TENNANTS (
  tennant_id CHAR(5),
  prop_id CHAR(5),
  deposit NUMBER(5), -- Dervied?
  rent_amt NUMBER(7), -- Derived? 
  t_start_date DATE, -- Date Constraint
  t_end_date DATE, -- Date Constraint
  commission NUMBER(7), -- Derived?
  dps_id CHAR(2),
  CONSTRAINT T_PKEY PRIMARY KEY (tennant_id),
  CONSTRAINT PROP_TENNANT FOREIGN KEY PROPERTIES;
  CONSTRAINT DPS_TENNANT FOREIGN KEY DPS;
);


CREATE TABLE VIEWING (
  view_id VARCHAR(5),
  prop_id VARCHAR(5),
  branch_id VARCHAR(5),
  cust_id VARCHAR(5),
  po_id VARCHAR (5),
  view_date_time DATETIME, -- Review the Output of this
  CONSTRAINT V_PKEY PRIMARY KEY (view_id),
  CONSTRAINT VIEW_PROP REFERENCES PROPERTIES,
  CONSTRAINT VIEW_PO REFERENCES PROP_OWNER,
  CONSTRAINT VIEW_CUST REFERENCES CUSTOMER,
);

CREATE TABLE COMMENTS (
  view_id VARCHAR(5),
  comment_content VARCHAR(500) NOT NULL,
  comment_period VARCHAR(6) NOT NULL,
  CONSTRAINT VIEW_COMMENT_REF FOREIGN KEY (view_id) REFERENCES VIEWING,
  CONSTRAINT COMMENT_PERIOD_CHECK CHECK (comment_period IN ('Before', 'After', 'During'))
);

CREATE TABLE ESTATE_AGENT (
  ea_id CHAR(3),
  headquaters CHAR(2) NOT NULL,
  website VARCHAR(50),
  ea_name VARCHAR(50) NOT NULL,
  CONSTRAINT EA_PKEY PRIMARY KEY (ea_id),
  CONSTRAINT EA_HQ FOREIGN KEY (headquaters) REFERENCES BRANCH,
  CONSTRAINT WEB_UNIQ UNIQUE (website)
);

ALTER TABLE BRANCH
    CONSTRAINT BRANCH_EA_REF
      FOREIGN KEY (ea_id) REFERENCES ESTATE_AGENT;

ALTER TABLE STAFF 
  ADD CONSTRAINT STAFF_BRANCH_REF
    FOREIGN KEY (branch_id) REFERENCES BRANCH;




