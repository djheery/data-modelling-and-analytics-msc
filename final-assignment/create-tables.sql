-- THINGS TO DO
-- :: Contact details (Mobile, email) could these be stored in one table? 
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

DROP TABLE CUSTOMER CASCADE CONSTRAINTS PURGE;
DROP TABLE STAFF CASCADE CONSTRAINTS PURGE;
DROP TABLE PAYROLL_DETAILS CASCADE CONSTRAINTS PURGE;
DROP TABLE STAFF CASCADE CONSTRAINTS PURGE;
DROP TABLE STAFF CASCADE CONSTRAINTS PURGE;
DROP TABLE STAFF CASCADE CONSTRAINTS PURGE;
DROP TABLE STAFF CASCADE CONSTRAINTS PURGE;
DROP TABLE STAFF CASCADE CONSTRAINTS PURGE;

CREATE TABLE CUSTOMER (
  cust_id CHAR(2), 
  c_full_name VARCHAR(30),
  gender char(1), 
  email VARCHAR(30),
  dob DATE,
  CONSTRAINT CUST_PKEY PRIMARY KEY (cust_id),
  CONSTRAINT CUST_GENDER check(gender IN ('M', 'F', 'O'))
);

CREATE TABLE STAFF (
  staff_id CHAR(2),
  s_full_name VARCHAR(30),
  email VARCHAR(30),
  CONSTRAINT STAFF_PKEY PRIMARY KEY (staff_id)
);

CREATE TABLE PAYROLL_DETAILS (
  staff_id CHAR(2),
  ni CHAR(9), -- Add check
  reg_addr VARCHAR(30) NOT NULL,
  sort_code NUMBER(9) NOT NULL, -- add check
  acc_no  NUMBER(9) NOT NULL, -- add check
  CONSTRAINT PD_PKEY PRIMARY KEY (ni),
  CONSTRAINT STAFF_PAYROLL FOREIGN KEY (staff_id) REFERENCES STAFF,
  CONSTRAINT UNIQ_SC UNIQUE (sort_code),
  CONSTRAINT UNIQ_ACNO UNIQUE (acc_no)
);

CREATE TABLE BRANCH (
  branch_id CHAR(2),
  addr VARCHAR(222),
  email VARCHAR(40), -- should I create one contact field?
  tel NUMBER(9), -- Check number amount
  manager CHAR(2),  
  CONSTRAINT B_PKEY PRIMARY KEY (branch_id),
  CONSTRAINT M_UNIQ UNIQUE (manager)
);

CREATE TABLE PROP_OWNER (
  po_id CHAR(2),
  cust_id CHAR(2),
  branch_id CHAR(2),
  CONSTRAINT PO_PKEY PRIMARY KEY (po_id),
  CONSTRAINT PO_CUST FOREIGN KEY (cust_id) REFERENCES CUSTOMER
);

CREATE TABLE PROPERTIES (
  prop_id CHAR(5),
  branch_id CHAR(5),
  list_type CHAR(2) check(list_type IN ('FS', 'S', 'FL', 'L')),
  list_date DATE,
  addr VARCHAR(33),
  prop_type VARCHAR(20) check(list_type IN ('Flat', 
                                            'Detatched', 
                                            'Semi-Detatched', 
                                            'Terraced')),
  po_id CHAR(5),
  loc_id CHAR(5)
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
  commission NUMBER(4),
  stamp_duty NUMBER(5),
  CONSTRAINT SP_PKEY PRIMARY KEY (buyer, prop_id)
);

CREATE TABLE TENNANTS (
  tennant_id CHAR(5),
  prop_id CHAR(5),
  deposit NUMBER(5),
  rent_amt NUMBER(7), 
  t_start_date DATE,
  t_end_date DATE, 
  commission NUMBER(7),
  dps_id CHAR(2),
  CONSTRAINT T_PKEY PRIMARY KEY (tennant_id)
);

CREATE TABLE DPS (
  dps_id char(3),
  dps_name VARCHAR(20),
  dps_email VARCHAR(40),
  CONSTRAINT DPS_PKEY PRIMARY KEY (dps_id)
);

CREATE TABLE CITY (
  city_code CHAR(2),
  city_name VARCHAR(20)
  CONSTRAINT CITY_PKEY PRIMARY KEY (city_code)
);

CREATE TABLE LOCATION (
  loc_id VARCHAR(3),
  city_code VARCHAR(3),
  loc_name VARCHAR(20),
  CONSTRAINT LOC_PKEY PRIMARY KEY (loc_id)
  CONSTRAINT LOC_CITY REFERENCES CITY;
);

CREATE TABLE VIEWING (
  view_id VARCHAR(5),
  prop_id VARCHAR(5),
  branch_id VARCHAR(5),
  cust_id VARCHAR(5),
  po_id VARCHAR (5),
  view_date DATE,
  view_time VARCHAR(40)
  CONSTRAINT V_PKEY PRIMARY KEY (view_id),
  CONSTRAINT VIEW_PROP REFERENCES PROPERTIES,
  CONSTRAINT VIEW_PO REFERENCES PROP_OWNER,
  CONSTRAINT VIEW_CUST REFERENCES CUSTOMER,
);

CREATE TABLE COMMENTS (
  view_id VARCHAR(5),
  comment_content VARCHAR(500),
  comment_period VARCHAR(20) CHECK (comment_period IN ('Before', 'After', 'During'))
);

CREATE TABLE ESTATE_AGENT (
  ea_id CHAR(3),
  headquaters CHAR(5),
  website VARCHAR(50),
  ea_name VARCHAR(50),
  CONSTRAINT EA_PKEY PRIMARY KEY (ea_id),
  CONSTRAINT EA_HQ FOREIGN KEY (headquaters) REFERENCES BRANCH,
  CONSTRAINT WEB_UNIQ UNIQUE website,
)

ALTER TABLE BRANCH 
  ADD CONSTRAINT B_STAFF 
    FOREIGN KEY (manager) REFERENCES STAFF;


ALTER TABLE STAFF 
  ADD payroll CHAR(9)
    CONSTRAINT STAFF_PAYROLL REFERENCES PAYROLL_DETAILS;


